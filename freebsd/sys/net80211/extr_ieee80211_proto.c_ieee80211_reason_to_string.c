
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
const char *
ieee80211_reason_to_string(uint16_t reason)
{
 switch (reason) {
 case 130:
  return ("unspecified");
 case 166:
  return ("previous authentication is expired");
 case 165:
  return ("sending STA is leaving/has left IBSS or ESS");
 case 170:
  return ("disassociated due to inactivity");
 case 167:
  return ("too many associated STAs");
 case 137:
  return ("class 2 frame received from nonauthenticated STA");
 case 138:
  return ("class 3 frame received from nonassociated STA");
 case 169:
  return ("sending STA is leaving/has left BSS");
 case 168:
  return ("STA requesting (re)association is not authenticated");
 case 162:
  return ("information in the Power Capability element is "
   "unacceptable");
 case 161:
  return ("information in the Supported Channels element is "
   "unacceptable");
 case 158:
  return ("invalid element");
 case 139:
  return ("MIC failure");
 case 173:
  return ("4-Way handshake timeout");
 case 159:
  return ("group key update timeout");
 case 157:
  return ("element in 4-Way handshake different from "
   "(re)association request/probe response/beacon frame");
 case 160:
  return ("invalid group cipher");
 case 135:
  return ("invalid pairwise cipher");
 case 171:
  return ("invalid AKMP");
 case 128:
  return ("unsupported version in RSN IE");
 case 155:
  return ("invalid capabilities in RSN IE");
 case 172:
  return ("IEEE 802.1X authentication failed");
 case 163:
  return ("cipher suite rejected because of the security "
   "policy");
 case 129:
  return ("unspecified (QoS-related)");
 case 156:
  return ("QoS AP lacks sufficient bandwidth for this QoS STA");
 case 131:
  return ("too many frames need to be acknowledged");
 case 136:
  return ("STA is transmitting outside the limits of its TXOPs");
 case 154:
  return ("requested from peer STA (the STA is "
   "resetting/leaving the BSS)");
 case 164:
  return ("requested from peer STA (it does not want to use "
   "the mechanism)");
 case 133:
  return ("requested from peer STA (setup is required for the "
   "used mechanism)");
 case 132:
  return ("requested from peer STA (timeout)");
 case 134:
  return ("SME cancels the mesh peering instance (not related "
   "to the maximum number of peer mesh STAs)");
 case 144:
  return ("maximum number of peer mesh STAs was reached");
 case 149:
  return ("the received information violates the Mesh "
   "Configuration policy configured in the mesh STA "
   "profile");
 case 151:
  return ("the mesh STA has received a Mesh Peering Close "
   "message requesting to close the mesh peering");
 case 143:
  return ("the mesh STA has resent dot11MeshMaxRetries Mesh "
   "Peering Open messages, without receiving a Mesh "
   "Peering Confirm message");
 case 150:
  return ("the confirmTimer for the mesh peering instance times "
   "out");
 case 147:
  return ("the mesh STA fails to unwrap the GTK or the values "
   "in the wrapped contents do not match");
 case 148:
  return ("the mesh STA receives inconsistent information about "
   "the mesh parameters between Mesh Peering Management "
   "frames");
 case 146:
  return ("the mesh STA fails the authenticated mesh peering "
   "exchange because due to failure in selecting "
   "pairwise/group ciphersuite");
 case 140:
  return ("the mesh STA does not have proxy information for "
   "this external destination");
 case 141:
  return ("the mesh STA does not have forwarding information "
   "for this destination");
 case 142:
  return ("the mesh STA determines that the link to the next "
   "hop of an active path in its forwarding information "
   "is no longer usable");
 case 145:
  return ("the MAC address of the STA already exists in the "
   "mesh BSS");
 case 153:
  return ("the mesh STA performs channel switch to meet "
   "regulatory requirements");
 case 152:
  return ("the mesh STA performs channel switch with "
   "unspecified reason");
 default:
  return ("reserved/unknown");
 }
}
