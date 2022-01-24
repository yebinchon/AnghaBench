#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int hexsz; } ;

/* Variables and functions */
 int AUTO_CRLF_INPUT ; 
 int /*<<< orphan*/  CONV_EOL_RNDTRP_DIE ; 
 int /*<<< orphan*/  CONV_EOL_RNDTRP_WARN ; 
 int /*<<< orphan*/  EOL_CRLF ; 
 int /*<<< orphan*/  EOL_LF ; 
 int /*<<< orphan*/  EOL_NATIVE ; 
 int /*<<< orphan*/  EOL_UNSET ; 
 int /*<<< orphan*/  LOG_REFS_ALWAYS ; 
 int /*<<< orphan*/  LOG_REFS_NONE ; 
 int /*<<< orphan*/  LOG_REFS_NORMAL ; 
 int /*<<< orphan*/  OBJECT_CREATION_USES_HARDLINKS ; 
 int /*<<< orphan*/  OBJECT_CREATION_USES_RENAMES ; 
 int Z_BEST_COMPRESSION ; 
 int Z_DEFAULT_COMPRESSION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  askpass_program ; 
 int assume_unchanged ; 
 int auto_comment_line_char ; 
 int auto_crlf ; 
 void* big_file_threshold ; 
 void* check_roundtrip_encoding ; 
 int check_stat ; 
 char comment_line_char ; 
 int FUNC1 (char const*) ; 
 int core_apply_sparse_checkout ; 
 int core_compression_level ; 
 int core_compression_seen ; 
 int /*<<< orphan*/  core_eol ; 
 int core_preload_index ; 
 int default_abbrev ; 
 void* delta_base_cache_limit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  editor_program ; 
 int FUNC3 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  excludes_file ; 
 int fsync_object_files ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  git_attributes_file ; 
 int FUNC5 (char const*,char const*) ; 
 int FUNC6 (char const*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*,char const*) ; 
 void* FUNC9 (char const*,char const*) ; 
 int /*<<< orphan*/  git_hooks_path ; 
 int /*<<< orphan*/  global_conv_flags_eol ; 
 int has_symlinks ; 
 int ignore_case ; 
 int is_bare_repository_cfg ; 
 int /*<<< orphan*/  log_all_ref_updates ; 
 int minimum_abbrev ; 
 void* notes_ref_name ; 
 int /*<<< orphan*/  object_creation_mode ; 
 int pack_compression_level ; 
 int /*<<< orphan*/  pack_compression_seen ; 
 void* packed_git_limit ; 
 int packed_git_window_size ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int FUNC11 (char const*,char const*,void*) ; 
 int precomposed_unicode ; 
 int prefer_symlink_refs ; 
 int protect_hfs ; 
 int protect_ntfs ; 
 int quote_path_fully ; 
 int read_replace_refs ; 
 int FUNC12 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char*) ; 
 TYPE_1__* the_hash_algo ; 
 int trust_ctime ; 
 int trust_executable_bit ; 
 int warn_ambiguous_refs ; 
 int /*<<< orphan*/  whitespace_rule_cfg ; 
 void* FUNC15 (char const*) ; 
 int zlib_compression_level ; 
 int zlib_compression_seen ; 

__attribute__((used)) static int FUNC16(const char *var, const char *value, void *cb)
{
	/* This needs a better name */
	if (!FUNC14(var, "core.filemode")) {
		trust_executable_bit = FUNC5(var, value);
		return 0;
	}
	if (!FUNC14(var, "core.trustctime")) {
		trust_ctime = FUNC5(var, value);
		return 0;
	}
	if (!FUNC14(var, "core.checkstat")) {
		if (!FUNC13(value, "default"))
			check_stat = 1;
		else if (!FUNC13(value, "minimal"))
			check_stat = 0;
	}

	if (!FUNC14(var, "core.quotepath")) {
		quote_path_fully = FUNC5(var, value);
		return 0;
	}

	if (!FUNC14(var, "core.symlinks")) {
		has_symlinks = FUNC5(var, value);
		return 0;
	}

	if (!FUNC14(var, "core.ignorecase")) {
		ignore_case = FUNC5(var, value);
		return 0;
	}

	if (!FUNC14(var, "core.attributesfile"))
		return FUNC7(&git_attributes_file, var, value);

	if (!FUNC14(var, "core.hookspath"))
		return FUNC7(&git_hooks_path, var, value);

	if (!FUNC14(var, "core.bare")) {
		is_bare_repository_cfg = FUNC5(var, value);
		return 0;
	}

	if (!FUNC14(var, "core.ignorestat")) {
		assume_unchanged = FUNC5(var, value);
		return 0;
	}

	if (!FUNC14(var, "core.prefersymlinkrefs")) {
		prefer_symlink_refs = FUNC5(var, value);
		return 0;
	}

	if (!FUNC14(var, "core.logallrefupdates")) {
		if (value && !FUNC13(value, "always"))
			log_all_ref_updates = LOG_REFS_ALWAYS;
		else if (FUNC5(var, value))
			log_all_ref_updates = LOG_REFS_NORMAL;
		else
			log_all_ref_updates = LOG_REFS_NONE;
		return 0;
	}

	if (!FUNC14(var, "core.warnambiguousrefs")) {
		warn_ambiguous_refs = FUNC5(var, value);
		return 0;
	}

	if (!FUNC14(var, "core.abbrev")) {
		if (!value)
			return FUNC1(var);
		if (!FUNC13(value, "auto"))
			default_abbrev = -1;
		else {
			int abbrev = FUNC6(var, value);
			if (abbrev < minimum_abbrev || abbrev > the_hash_algo->hexsz)
				return FUNC3(FUNC0("abbrev length out of range: %d"), abbrev);
			default_abbrev = abbrev;
		}
		return 0;
	}

	if (!FUNC14(var, "core.disambiguate"))
		return FUNC12(var, value);

	if (!FUNC14(var, "core.loosecompression")) {
		int level = FUNC6(var, value);
		if (level == -1)
			level = Z_DEFAULT_COMPRESSION;
		else if (level < 0 || level > Z_BEST_COMPRESSION)
			FUNC2(FUNC0("bad zlib compression level %d"), level);
		zlib_compression_level = level;
		zlib_compression_seen = 1;
		return 0;
	}

	if (!FUNC14(var, "core.compression")) {
		int level = FUNC6(var, value);
		if (level == -1)
			level = Z_DEFAULT_COMPRESSION;
		else if (level < 0 || level > Z_BEST_COMPRESSION)
			FUNC2(FUNC0("bad zlib compression level %d"), level);
		core_compression_level = level;
		core_compression_seen = 1;
		if (!zlib_compression_seen)
			zlib_compression_level = level;
		if (!pack_compression_seen)
			pack_compression_level = level;
		return 0;
	}

	if (!FUNC14(var, "core.packedgitwindowsize")) {
		int pgsz_x2 = FUNC4() * 2;
		packed_git_window_size = FUNC9(var, value);

		/* This value must be multiple of (pagesize * 2) */
		packed_git_window_size /= pgsz_x2;
		if (packed_git_window_size < 1)
			packed_git_window_size = 1;
		packed_git_window_size *= pgsz_x2;
		return 0;
	}

	if (!FUNC14(var, "core.bigfilethreshold")) {
		big_file_threshold = FUNC9(var, value);
		return 0;
	}

	if (!FUNC14(var, "core.packedgitlimit")) {
		packed_git_limit = FUNC9(var, value);
		return 0;
	}

	if (!FUNC14(var, "core.deltabasecachelimit")) {
		delta_base_cache_limit = FUNC9(var, value);
		return 0;
	}

	if (!FUNC14(var, "core.autocrlf")) {
		if (value && !FUNC13(value, "input")) {
			auto_crlf = AUTO_CRLF_INPUT;
			return 0;
		}
		auto_crlf = FUNC5(var, value);
		return 0;
	}

	if (!FUNC14(var, "core.safecrlf")) {
		int eol_rndtrp_die;
		if (value && !FUNC13(value, "warn")) {
			global_conv_flags_eol = CONV_EOL_RNDTRP_WARN;
			return 0;
		}
		eol_rndtrp_die = FUNC5(var, value);
		global_conv_flags_eol = eol_rndtrp_die ?
			CONV_EOL_RNDTRP_DIE : 0;
		return 0;
	}

	if (!FUNC14(var, "core.eol")) {
		if (value && !FUNC13(value, "lf"))
			core_eol = EOL_LF;
		else if (value && !FUNC13(value, "crlf"))
			core_eol = EOL_CRLF;
		else if (value && !FUNC13(value, "native"))
			core_eol = EOL_NATIVE;
		else
			core_eol = EOL_UNSET;
		return 0;
	}

	if (!FUNC14(var, "core.checkroundtripencoding")) {
		check_roundtrip_encoding = FUNC15(value);
		return 0;
	}

	if (!FUNC14(var, "core.notesref")) {
		notes_ref_name = FUNC15(value);
		return 0;
	}

	if (!FUNC14(var, "core.editor"))
		return FUNC8(&editor_program, var, value);

	if (!FUNC14(var, "core.commentchar")) {
		if (!value)
			return FUNC1(var);
		else if (!FUNC13(value, "auto"))
			auto_comment_line_char = 1;
		else if (value[0] && !value[1]) {
			comment_line_char = value[0];
			auto_comment_line_char = 0;
		} else
			return FUNC3(FUNC0("core.commentChar should only be one character"));
		return 0;
	}

	if (!FUNC14(var, "core.askpass"))
		return FUNC8(&askpass_program, var, value);

	if (!FUNC14(var, "core.excludesfile"))
		return FUNC7(&excludes_file, var, value);

	if (!FUNC14(var, "core.whitespace")) {
		if (!value)
			return FUNC1(var);
		whitespace_rule_cfg = FUNC10(value);
		return 0;
	}

	if (!FUNC14(var, "core.fsyncobjectfiles")) {
		fsync_object_files = FUNC5(var, value);
		return 0;
	}

	if (!FUNC14(var, "core.preloadindex")) {
		core_preload_index = FUNC5(var, value);
		return 0;
	}

	if (!FUNC14(var, "core.createobject")) {
		if (!FUNC14(value, "rename"))
			object_creation_mode = OBJECT_CREATION_USES_RENAMES;
		else if (!FUNC14(value, "link"))
			object_creation_mode = OBJECT_CREATION_USES_HARDLINKS;
		else
			FUNC2(FUNC0("invalid mode for object creation: %s"), value);
		return 0;
	}

	if (!FUNC14(var, "core.sparsecheckout")) {
		core_apply_sparse_checkout = FUNC5(var, value);
		return 0;
	}

	if (!FUNC14(var, "core.precomposeunicode")) {
		precomposed_unicode = FUNC5(var, value);
		return 0;
	}

	if (!FUNC14(var, "core.protecthfs")) {
		protect_hfs = FUNC5(var, value);
		return 0;
	}

	if (!FUNC14(var, "core.protectntfs")) {
		protect_ntfs = FUNC5(var, value);
		return 0;
	}

	if (!FUNC14(var, "core.usereplacerefs")) {
		read_replace_refs = FUNC5(var, value);
		return 0;
	}

	/* Add other config variables here and to Documentation/config.txt. */
	return FUNC11(var, value, cb);
}