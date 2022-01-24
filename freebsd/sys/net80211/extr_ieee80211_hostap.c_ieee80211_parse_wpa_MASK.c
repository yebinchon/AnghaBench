#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct ieee80211vap {int iv_flags; } ;
struct ieee80211_rsnparms {int rsn_mcastcipher; int rsn_ucastcipher; int rsn_keymgmt; void* rsn_caps; int /*<<< orphan*/  rsn_ucastkeylen; int /*<<< orphan*/  rsn_mcastkeylen; } ;
struct ieee80211_frame {int dummy; } ;

/* Variables and functions */
 int IEEE80211_CIPHER_AES_CCM ; 
 int IEEE80211_CIPHER_TKIP ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211vap*,int,struct ieee80211_frame const*,char*,char*,int,...) ; 
 int IEEE80211_F_WPA1 ; 
 int IEEE80211_MSG_ELEMID ; 
 int IEEE80211_MSG_WPA ; 
 int IEEE80211_REASON_GROUP_CIPHER_INVALID ; 
 int IEEE80211_REASON_IE_INVALID ; 
 int IEEE80211_REASON_PAIRWISE_CIPHER_INVALID ; 
 int WPA_ASE_8021X_PSK ; 
 int WPA_ASE_8021X_UNSPEC ; 
 int WPA_VERSION ; 
 void* FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_rsnparms*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int const*,int /*<<< orphan*/ *,int*) ; 
 int FUNC5 (int const*) ; 

__attribute__((used)) static int
FUNC6(struct ieee80211vap *vap, const uint8_t *frm,
	struct ieee80211_rsnparms *rsn, const struct ieee80211_frame *wh)
{
	uint8_t len = frm[1];
	uint32_t w;
	int error, n;

	/*
	 * Check the length once for fixed parts: OUI, type,
	 * version, mcast cipher, and 2 selector counts.
	 * Other, variable-length data, must be checked separately.
	 */
	if ((vap->iv_flags & IEEE80211_F_WPA1) == 0) {
		FUNC0(vap,
		    IEEE80211_MSG_ELEMID | IEEE80211_MSG_WPA,
		    wh, "WPA", "not WPA, flags 0x%x", vap->iv_flags);
		return IEEE80211_REASON_IE_INVALID;
	}
	if (len < 14) {
		FUNC0(vap,
		    IEEE80211_MSG_ELEMID | IEEE80211_MSG_WPA,
		    wh, "WPA", "too short, len %u", len);
		return IEEE80211_REASON_IE_INVALID;
	}
	frm += 6, len -= 4;		/* NB: len is payload only */
	/* NB: iswpaoui already validated the OUI and type */
	w = FUNC1(frm);
	if (w != WPA_VERSION) {
		FUNC0(vap,
		    IEEE80211_MSG_ELEMID | IEEE80211_MSG_WPA,
		    wh, "WPA", "bad version %u", w);
		return IEEE80211_REASON_IE_INVALID;
	}
	frm += 2, len -= 2;

	FUNC3(rsn, 0, sizeof(*rsn));

	/* multicast/group cipher */
	error = FUNC4(frm, &rsn->rsn_mcastkeylen, &rsn->rsn_mcastcipher);
	if (error != 0) {
		FUNC0(vap,
		    IEEE80211_MSG_ELEMID | IEEE80211_MSG_WPA,
		    wh, "WPA", "unknown mcast cipher suite %08X",
		    FUNC2(frm));
		return IEEE80211_REASON_GROUP_CIPHER_INVALID;
	}
	frm += 4, len -= 4;

	/* unicast ciphers */
	n = FUNC1(frm);
	frm += 2, len -= 2;
	if (len < n*4+2) {
		FUNC0(vap,
		    IEEE80211_MSG_ELEMID | IEEE80211_MSG_WPA,
		    wh, "WPA", "ucast cipher data too short; len %u, n %u",
		    len, n);
		return IEEE80211_REASON_IE_INVALID;
	}
	w = 0;
	for (; n > 0; n--) {
		uint8_t cipher;

		error = FUNC4(frm, &rsn->rsn_ucastkeylen, &cipher);
		if (error == 0)
			w |= 1 << cipher;

		frm += 4, len -= 4;
	}
	if (w == 0) {
		FUNC0(vap,
		    IEEE80211_MSG_ELEMID | IEEE80211_MSG_WPA,
		    wh, "WPA", "no usable pairwise cipher suite found (w=%d)",
		    w);
		return IEEE80211_REASON_PAIRWISE_CIPHER_INVALID;
	}
	/* XXX other? */
	if (w & (1 << IEEE80211_CIPHER_AES_CCM))
		rsn->rsn_ucastcipher = IEEE80211_CIPHER_AES_CCM;
	else
		rsn->rsn_ucastcipher = IEEE80211_CIPHER_TKIP;

	/* key management algorithms */
	n = FUNC1(frm);
	frm += 2, len -= 2;
	if (len < n*4) {
		FUNC0(vap,
		    IEEE80211_MSG_ELEMID | IEEE80211_MSG_WPA,
		    wh, "WPA", "key mgmt alg data too short; len %u, n %u",
		    len, n);
		return IEEE80211_REASON_IE_INVALID;
	}
	w = 0;
	for (; n > 0; n--) {
		w |= FUNC5(frm);
		frm += 4, len -= 4;
	}
	if (w & WPA_ASE_8021X_UNSPEC)
		rsn->rsn_keymgmt = WPA_ASE_8021X_UNSPEC;
	else
		rsn->rsn_keymgmt = WPA_ASE_8021X_PSK;

	if (len > 2)		/* optional capabilities */
		rsn->rsn_caps = FUNC1(frm);

	return 0;
}