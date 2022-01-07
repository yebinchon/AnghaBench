; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_git_default_core_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_git_default_core_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"core.filemode\00", align 1
@trust_executable_bit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"core.trustctime\00", align 1
@trust_ctime = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"core.checkstat\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@check_stat = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"minimal\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"core.quotepath\00", align 1
@quote_path_fully = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"core.symlinks\00", align 1
@has_symlinks = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"core.ignorecase\00", align 1
@ignore_case = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"core.attributesfile\00", align 1
@git_attributes_file = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"core.hookspath\00", align 1
@git_hooks_path = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"core.bare\00", align 1
@is_bare_repository_cfg = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"core.ignorestat\00", align 1
@assume_unchanged = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"core.prefersymlinkrefs\00", align 1
@prefer_symlink_refs = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"core.logallrefupdates\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@LOG_REFS_ALWAYS = common dso_local global i32 0, align 4
@log_all_ref_updates = common dso_local global i32 0, align 4
@LOG_REFS_NORMAL = common dso_local global i32 0, align 4
@LOG_REFS_NONE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [23 x i8] c"core.warnambiguousrefs\00", align 1
@warn_ambiguous_refs = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"core.abbrev\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@default_abbrev = common dso_local global i32 0, align 4
@minimum_abbrev = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str.18 = private unnamed_addr constant [31 x i8] c"abbrev length out of range: %d\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"core.disambiguate\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"core.loosecompression\00", align 1
@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4
@Z_BEST_COMPRESSION = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [30 x i8] c"bad zlib compression level %d\00", align 1
@zlib_compression_level = common dso_local global i32 0, align 4
@zlib_compression_seen = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"core.compression\00", align 1
@core_compression_level = common dso_local global i32 0, align 4
@core_compression_seen = common dso_local global i32 0, align 4
@pack_compression_seen = common dso_local global i32 0, align 4
@pack_compression_level = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [25 x i8] c"core.packedgitwindowsize\00", align 1
@packed_git_window_size = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [22 x i8] c"core.bigfilethreshold\00", align 1
@big_file_threshold = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [20 x i8] c"core.packedgitlimit\00", align 1
@packed_git_limit = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [25 x i8] c"core.deltabasecachelimit\00", align 1
@delta_base_cache_limit = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [14 x i8] c"core.autocrlf\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@AUTO_CRLF_INPUT = common dso_local global i32 0, align 4
@auto_crlf = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [14 x i8] c"core.safecrlf\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@CONV_EOL_RNDTRP_WARN = common dso_local global i32 0, align 4
@global_conv_flags_eol = common dso_local global i32 0, align 4
@CONV_EOL_RNDTRP_DIE = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [9 x i8] c"core.eol\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"lf\00", align 1
@EOL_LF = common dso_local global i32 0, align 4
@core_eol = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [5 x i8] c"crlf\00", align 1
@EOL_CRLF = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [7 x i8] c"native\00", align 1
@EOL_NATIVE = common dso_local global i32 0, align 4
@EOL_UNSET = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [28 x i8] c"core.checkroundtripencoding\00", align 1
@check_roundtrip_encoding = common dso_local global i8* null, align 8
@.str.36 = private unnamed_addr constant [14 x i8] c"core.notesref\00", align 1
@notes_ref_name = common dso_local global i8* null, align 8
@.str.37 = private unnamed_addr constant [12 x i8] c"core.editor\00", align 1
@editor_program = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [17 x i8] c"core.commentchar\00", align 1
@auto_comment_line_char = common dso_local global i32 0, align 4
@comment_line_char = common dso_local global i8 0, align 1
@.str.39 = private unnamed_addr constant [46 x i8] c"core.commentChar should only be one character\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"core.askpass\00", align 1
@askpass_program = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [18 x i8] c"core.excludesfile\00", align 1
@excludes_file = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [16 x i8] c"core.whitespace\00", align 1
@whitespace_rule_cfg = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [22 x i8] c"core.fsyncobjectfiles\00", align 1
@fsync_object_files = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [18 x i8] c"core.preloadindex\00", align 1
@core_preload_index = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [18 x i8] c"core.createobject\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@OBJECT_CREATION_USES_RENAMES = common dso_local global i32 0, align 4
@object_creation_mode = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@OBJECT_CREATION_USES_HARDLINKS = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [37 x i8] c"invalid mode for object creation: %s\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"core.sparsecheckout\00", align 1
@core_apply_sparse_checkout = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [23 x i8] c"core.precomposeunicode\00", align 1
@precomposed_unicode = common dso_local global i32 0, align 4
@.str.51 = private unnamed_addr constant [16 x i8] c"core.protecthfs\00", align 1
@protect_hfs = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [17 x i8] c"core.protectntfs\00", align 1
@protect_ntfs = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [20 x i8] c"core.usereplacerefs\00", align 1
@read_replace_refs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_default_core_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_default_core_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @git_config_bool(i8* %17, i8* %18)
  store i32 %19, i32* @trust_executable_bit, align 4
  store i32 0, i32* %4, align 4
  br label %537

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @git_config_bool(i8* %25, i8* %26)
  store i32 %27, i32* @trust_ctime, align 4
  store i32 0, i32* %4, align 4
  br label %537

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strcasecmp(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 1, i32* @check_stat, align 4
  br label %43

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strcasecmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 0, i32* @check_stat, align 4
  br label %42

42:                                               ; preds = %41, %37
  br label %43

43:                                               ; preds = %42, %36
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @git_config_bool(i8* %49, i8* %50)
  store i32 %51, i32* @quote_path_fully, align 4
  store i32 0, i32* %4, align 4
  br label %537

52:                                               ; preds = %44
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %5, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @git_config_bool(i8* %57, i8* %58)
  store i32 %59, i32* @has_symlinks, align 4
  store i32 0, i32* %4, align 4
  br label %537

60:                                               ; preds = %52
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @git_config_bool(i8* %65, i8* %66)
  store i32 %67, i32* @ignore_case, align 4
  store i32 0, i32* %4, align 4
  br label %537

68:                                               ; preds = %60
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** %5, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @git_config_pathname(i32* @git_attributes_file, i8* %73, i8* %74)
  store i32 %75, i32* %4, align 4
  br label %537

76:                                               ; preds = %68
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i8*, i8** %5, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @git_config_pathname(i32* @git_hooks_path, i8* %81, i8* %82)
  store i32 %83, i32* %4, align 4
  br label %537

84:                                               ; preds = %76
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %5, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @git_config_bool(i8* %89, i8* %90)
  store i32 %91, i32* @is_bare_repository_cfg, align 4
  store i32 0, i32* %4, align 4
  br label %537

92:                                               ; preds = %84
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i8*, i8** %5, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @git_config_bool(i8* %97, i8* %98)
  store i32 %99, i32* @assume_unchanged, align 4
  store i32 0, i32* %4, align 4
  br label %537

100:                                              ; preds = %92
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i8*, i8** %5, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @git_config_bool(i8* %105, i8* %106)
  store i32 %107, i32* @prefer_symlink_refs, align 4
  store i32 0, i32* %4, align 4
  br label %537

108:                                              ; preds = %100
  %109 = load i8*, i8** %5, align 8
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %132, label %112

112:                                              ; preds = %108
  %113 = load i8*, i8** %6, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @strcasecmp(i8* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* @LOG_REFS_ALWAYS, align 4
  store i32 %120, i32* @log_all_ref_updates, align 4
  br label %131

121:                                              ; preds = %115, %112
  %122 = load i8*, i8** %5, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 @git_config_bool(i8* %122, i8* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* @LOG_REFS_NORMAL, align 4
  store i32 %127, i32* @log_all_ref_updates, align 4
  br label %130

128:                                              ; preds = %121
  %129 = load i32, i32* @LOG_REFS_NONE, align 4
  store i32 %129, i32* @log_all_ref_updates, align 4
  br label %130

130:                                              ; preds = %128, %126
  br label %131

131:                                              ; preds = %130, %119
  store i32 0, i32* %4, align 4
  br label %537

132:                                              ; preds = %108
  %133 = load i8*, i8** %5, align 8
  %134 = call i32 @strcmp(i8* %133, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i8*, i8** %5, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = call i32 @git_config_bool(i8* %137, i8* %138)
  store i32 %139, i32* @warn_ambiguous_refs, align 4
  store i32 0, i32* %4, align 4
  br label %537

140:                                              ; preds = %132
  %141 = load i8*, i8** %5, align 8
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %175, label %144

144:                                              ; preds = %140
  %145 = load i8*, i8** %6, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i8*, i8** %5, align 8
  %149 = call i32 @config_error_nonbool(i8* %148)
  store i32 %149, i32* %4, align 4
  br label %537

150:                                              ; preds = %144
  %151 = load i8*, i8** %6, align 8
  %152 = call i32 @strcasecmp(i8* %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  store i32 -1, i32* @default_abbrev, align 4
  br label %174

155:                                              ; preds = %150
  %156 = load i8*, i8** %5, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = call i32 @git_config_int(i8* %156, i8* %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @minimum_abbrev, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %168, label %162

162:                                              ; preds = %155
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp sgt i32 %163, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %162, %155
  %169 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0))
  %170 = load i32, i32* %8, align 4
  %171 = call i32 (i32, ...) @error(i32 %169, i32 %170)
  store i32 %171, i32* %4, align 4
  br label %537

172:                                              ; preds = %162
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* @default_abbrev, align 4
  br label %174

174:                                              ; preds = %172, %154
  store i32 0, i32* %4, align 4
  br label %537

175:                                              ; preds = %140
  %176 = load i8*, i8** %5, align 8
  %177 = call i32 @strcmp(i8* %176, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %175
  %180 = load i8*, i8** %5, align 8
  %181 = load i8*, i8** %6, align 8
  %182 = call i32 @set_disambiguate_hint_config(i8* %180, i8* %181)
  store i32 %182, i32* %4, align 4
  br label %537

183:                                              ; preds = %175
  %184 = load i8*, i8** %5, align 8
  %185 = call i32 @strcmp(i8* %184, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %209, label %187

187:                                              ; preds = %183
  %188 = load i8*, i8** %5, align 8
  %189 = load i8*, i8** %6, align 8
  %190 = call i32 @git_config_int(i8* %188, i8* %189)
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %195

193:                                              ; preds = %187
  %194 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  store i32 %194, i32* %9, align 4
  br label %207

195:                                              ; preds = %187
  %196 = load i32, i32* %9, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* @Z_BEST_COMPRESSION, align 4
  %201 = icmp sgt i32 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %198, %195
  %203 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0))
  %204 = load i32, i32* %9, align 4
  %205 = call i32 (i32, ...) @die(i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %202, %198
  br label %207

207:                                              ; preds = %206, %193
  %208 = load i32, i32* %9, align 4
  store i32 %208, i32* @zlib_compression_level, align 4
  store i32 1, i32* @zlib_compression_seen, align 4
  store i32 0, i32* %4, align 4
  br label %537

209:                                              ; preds = %183
  %210 = load i8*, i8** %5, align 8
  %211 = call i32 @strcmp(i8* %210, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %245, label %213

213:                                              ; preds = %209
  %214 = load i8*, i8** %5, align 8
  %215 = load i8*, i8** %6, align 8
  %216 = call i32 @git_config_int(i8* %214, i8* %215)
  store i32 %216, i32* %10, align 4
  %217 = load i32, i32* %10, align 4
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %219, label %221

219:                                              ; preds = %213
  %220 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  store i32 %220, i32* %10, align 4
  br label %233

221:                                              ; preds = %213
  %222 = load i32, i32* %10, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %221
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* @Z_BEST_COMPRESSION, align 4
  %227 = icmp sgt i32 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %224, %221
  %229 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0))
  %230 = load i32, i32* %10, align 4
  %231 = call i32 (i32, ...) @die(i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %228, %224
  br label %233

233:                                              ; preds = %232, %219
  %234 = load i32, i32* %10, align 4
  store i32 %234, i32* @core_compression_level, align 4
  store i32 1, i32* @core_compression_seen, align 4
  %235 = load i32, i32* @zlib_compression_seen, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %233
  %238 = load i32, i32* %10, align 4
  store i32 %238, i32* @zlib_compression_level, align 4
  br label %239

239:                                              ; preds = %237, %233
  %240 = load i32, i32* @pack_compression_seen, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %239
  %243 = load i32, i32* %10, align 4
  store i32 %243, i32* @pack_compression_level, align 4
  br label %244

244:                                              ; preds = %242, %239
  store i32 0, i32* %4, align 4
  br label %537

245:                                              ; preds = %209
  %246 = load i8*, i8** %5, align 8
  %247 = call i32 @strcmp(i8* %246, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0))
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %266, label %249

249:                                              ; preds = %245
  %250 = call i32 (...) @getpagesize()
  %251 = mul nsw i32 %250, 2
  store i32 %251, i32* %11, align 4
  %252 = load i8*, i8** %5, align 8
  %253 = load i8*, i8** %6, align 8
  %254 = call i8* @git_config_ulong(i8* %252, i8* %253)
  %255 = ptrtoint i8* %254 to i32
  store i32 %255, i32* @packed_git_window_size, align 4
  %256 = load i32, i32* %11, align 4
  %257 = load i32, i32* @packed_git_window_size, align 4
  %258 = sdiv i32 %257, %256
  store i32 %258, i32* @packed_git_window_size, align 4
  %259 = load i32, i32* @packed_git_window_size, align 4
  %260 = icmp slt i32 %259, 1
  br i1 %260, label %261, label %262

261:                                              ; preds = %249
  store i32 1, i32* @packed_git_window_size, align 4
  br label %262

262:                                              ; preds = %261, %249
  %263 = load i32, i32* %11, align 4
  %264 = load i32, i32* @packed_git_window_size, align 4
  %265 = mul nsw i32 %264, %263
  store i32 %265, i32* @packed_git_window_size, align 4
  store i32 0, i32* %4, align 4
  br label %537

266:                                              ; preds = %245
  %267 = load i8*, i8** %5, align 8
  %268 = call i32 @strcmp(i8* %267, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0))
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %266
  %271 = load i8*, i8** %5, align 8
  %272 = load i8*, i8** %6, align 8
  %273 = call i8* @git_config_ulong(i8* %271, i8* %272)
  store i8* %273, i8** @big_file_threshold, align 8
  store i32 0, i32* %4, align 4
  br label %537

274:                                              ; preds = %266
  %275 = load i8*, i8** %5, align 8
  %276 = call i32 @strcmp(i8* %275, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0))
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %282, label %278

278:                                              ; preds = %274
  %279 = load i8*, i8** %5, align 8
  %280 = load i8*, i8** %6, align 8
  %281 = call i8* @git_config_ulong(i8* %279, i8* %280)
  store i8* %281, i8** @packed_git_limit, align 8
  store i32 0, i32* %4, align 4
  br label %537

282:                                              ; preds = %274
  %283 = load i8*, i8** %5, align 8
  %284 = call i32 @strcmp(i8* %283, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0))
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %290, label %286

286:                                              ; preds = %282
  %287 = load i8*, i8** %5, align 8
  %288 = load i8*, i8** %6, align 8
  %289 = call i8* @git_config_ulong(i8* %287, i8* %288)
  store i8* %289, i8** @delta_base_cache_limit, align 8
  store i32 0, i32* %4, align 4
  br label %537

290:                                              ; preds = %282
  %291 = load i8*, i8** %5, align 8
  %292 = call i32 @strcmp(i8* %291, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0))
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %307, label %294

294:                                              ; preds = %290
  %295 = load i8*, i8** %6, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %297, label %303

297:                                              ; preds = %294
  %298 = load i8*, i8** %6, align 8
  %299 = call i32 @strcasecmp(i8* %298, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %303, label %301

301:                                              ; preds = %297
  %302 = load i32, i32* @AUTO_CRLF_INPUT, align 4
  store i32 %302, i32* @auto_crlf, align 4
  store i32 0, i32* %4, align 4
  br label %537

303:                                              ; preds = %297, %294
  %304 = load i8*, i8** %5, align 8
  %305 = load i8*, i8** %6, align 8
  %306 = call i32 @git_config_bool(i8* %304, i8* %305)
  store i32 %306, i32* @auto_crlf, align 4
  store i32 0, i32* %4, align 4
  br label %537

307:                                              ; preds = %290
  %308 = load i8*, i8** %5, align 8
  %309 = call i32 @strcmp(i8* %308, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0))
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %331, label %311

311:                                              ; preds = %307
  %312 = load i8*, i8** %6, align 8
  %313 = icmp ne i8* %312, null
  br i1 %313, label %314, label %320

314:                                              ; preds = %311
  %315 = load i8*, i8** %6, align 8
  %316 = call i32 @strcasecmp(i8* %315, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %320, label %318

318:                                              ; preds = %314
  %319 = load i32, i32* @CONV_EOL_RNDTRP_WARN, align 4
  store i32 %319, i32* @global_conv_flags_eol, align 4
  store i32 0, i32* %4, align 4
  br label %537

320:                                              ; preds = %314, %311
  %321 = load i8*, i8** %5, align 8
  %322 = load i8*, i8** %6, align 8
  %323 = call i32 @git_config_bool(i8* %321, i8* %322)
  store i32 %323, i32* %12, align 4
  %324 = load i32, i32* %12, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %320
  %327 = load i32, i32* @CONV_EOL_RNDTRP_DIE, align 4
  br label %329

328:                                              ; preds = %320
  br label %329

329:                                              ; preds = %328, %326
  %330 = phi i32 [ %327, %326 ], [ 0, %328 ]
  store i32 %330, i32* @global_conv_flags_eol, align 4
  store i32 0, i32* %4, align 4
  br label %537

331:                                              ; preds = %307
  %332 = load i8*, i8** %5, align 8
  %333 = call i32 @strcmp(i8* %332, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0))
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %367, label %335

335:                                              ; preds = %331
  %336 = load i8*, i8** %6, align 8
  %337 = icmp ne i8* %336, null
  br i1 %337, label %338, label %344

338:                                              ; preds = %335
  %339 = load i8*, i8** %6, align 8
  %340 = call i32 @strcasecmp(i8* %339, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0))
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %344, label %342

342:                                              ; preds = %338
  %343 = load i32, i32* @EOL_LF, align 4
  store i32 %343, i32* @core_eol, align 4
  br label %366

344:                                              ; preds = %338, %335
  %345 = load i8*, i8** %6, align 8
  %346 = icmp ne i8* %345, null
  br i1 %346, label %347, label %353

347:                                              ; preds = %344
  %348 = load i8*, i8** %6, align 8
  %349 = call i32 @strcasecmp(i8* %348, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %353, label %351

351:                                              ; preds = %347
  %352 = load i32, i32* @EOL_CRLF, align 4
  store i32 %352, i32* @core_eol, align 4
  br label %365

353:                                              ; preds = %347, %344
  %354 = load i8*, i8** %6, align 8
  %355 = icmp ne i8* %354, null
  br i1 %355, label %356, label %362

356:                                              ; preds = %353
  %357 = load i8*, i8** %6, align 8
  %358 = call i32 @strcasecmp(i8* %357, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %362, label %360

360:                                              ; preds = %356
  %361 = load i32, i32* @EOL_NATIVE, align 4
  store i32 %361, i32* @core_eol, align 4
  br label %364

362:                                              ; preds = %356, %353
  %363 = load i32, i32* @EOL_UNSET, align 4
  store i32 %363, i32* @core_eol, align 4
  br label %364

364:                                              ; preds = %362, %360
  br label %365

365:                                              ; preds = %364, %351
  br label %366

366:                                              ; preds = %365, %342
  store i32 0, i32* %4, align 4
  br label %537

367:                                              ; preds = %331
  %368 = load i8*, i8** %5, align 8
  %369 = call i32 @strcmp(i8* %368, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i64 0, i64 0))
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %374, label %371

371:                                              ; preds = %367
  %372 = load i8*, i8** %6, align 8
  %373 = call i8* @xstrdup(i8* %372)
  store i8* %373, i8** @check_roundtrip_encoding, align 8
  store i32 0, i32* %4, align 4
  br label %537

374:                                              ; preds = %367
  %375 = load i8*, i8** %5, align 8
  %376 = call i32 @strcmp(i8* %375, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0))
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %381, label %378

378:                                              ; preds = %374
  %379 = load i8*, i8** %6, align 8
  %380 = call i8* @xstrdup(i8* %379)
  store i8* %380, i8** @notes_ref_name, align 8
  store i32 0, i32* %4, align 4
  br label %537

381:                                              ; preds = %374
  %382 = load i8*, i8** %5, align 8
  %383 = call i32 @strcmp(i8* %382, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0))
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %389, label %385

385:                                              ; preds = %381
  %386 = load i8*, i8** %5, align 8
  %387 = load i8*, i8** %6, align 8
  %388 = call i32 @git_config_string(i32* @editor_program, i8* %386, i8* %387)
  store i32 %388, i32* %4, align 4
  br label %537

389:                                              ; preds = %381
  %390 = load i8*, i8** %5, align 8
  %391 = call i32 @strcmp(i8* %390, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0))
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %425, label %393

393:                                              ; preds = %389
  %394 = load i8*, i8** %6, align 8
  %395 = icmp ne i8* %394, null
  br i1 %395, label %399, label %396

396:                                              ; preds = %393
  %397 = load i8*, i8** %5, align 8
  %398 = call i32 @config_error_nonbool(i8* %397)
  store i32 %398, i32* %4, align 4
  br label %537

399:                                              ; preds = %393
  %400 = load i8*, i8** %6, align 8
  %401 = call i32 @strcasecmp(i8* %400, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %404, label %403

403:                                              ; preds = %399
  store i32 1, i32* @auto_comment_line_char, align 4
  br label %423

404:                                              ; preds = %399
  %405 = load i8*, i8** %6, align 8
  %406 = getelementptr inbounds i8, i8* %405, i64 0
  %407 = load i8, i8* %406, align 1
  %408 = sext i8 %407 to i32
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %419

410:                                              ; preds = %404
  %411 = load i8*, i8** %6, align 8
  %412 = getelementptr inbounds i8, i8* %411, i64 1
  %413 = load i8, i8* %412, align 1
  %414 = icmp ne i8 %413, 0
  br i1 %414, label %419, label %415

415:                                              ; preds = %410
  %416 = load i8*, i8** %6, align 8
  %417 = getelementptr inbounds i8, i8* %416, i64 0
  %418 = load i8, i8* %417, align 1
  store i8 %418, i8* @comment_line_char, align 1
  store i32 0, i32* @auto_comment_line_char, align 4
  br label %422

419:                                              ; preds = %410, %404
  %420 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.39, i64 0, i64 0))
  %421 = call i32 (i32, ...) @error(i32 %420)
  store i32 %421, i32* %4, align 4
  br label %537

422:                                              ; preds = %415
  br label %423

423:                                              ; preds = %422, %403
  br label %424

424:                                              ; preds = %423
  store i32 0, i32* %4, align 4
  br label %537

425:                                              ; preds = %389
  %426 = load i8*, i8** %5, align 8
  %427 = call i32 @strcmp(i8* %426, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0))
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %433, label %429

429:                                              ; preds = %425
  %430 = load i8*, i8** %5, align 8
  %431 = load i8*, i8** %6, align 8
  %432 = call i32 @git_config_string(i32* @askpass_program, i8* %430, i8* %431)
  store i32 %432, i32* %4, align 4
  br label %537

433:                                              ; preds = %425
  %434 = load i8*, i8** %5, align 8
  %435 = call i32 @strcmp(i8* %434, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0))
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %441, label %437

437:                                              ; preds = %433
  %438 = load i8*, i8** %5, align 8
  %439 = load i8*, i8** %6, align 8
  %440 = call i32 @git_config_pathname(i32* @excludes_file, i8* %438, i8* %439)
  store i32 %440, i32* %4, align 4
  br label %537

441:                                              ; preds = %433
  %442 = load i8*, i8** %5, align 8
  %443 = call i32 @strcmp(i8* %442, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0))
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %454, label %445

445:                                              ; preds = %441
  %446 = load i8*, i8** %6, align 8
  %447 = icmp ne i8* %446, null
  br i1 %447, label %451, label %448

448:                                              ; preds = %445
  %449 = load i8*, i8** %5, align 8
  %450 = call i32 @config_error_nonbool(i8* %449)
  store i32 %450, i32* %4, align 4
  br label %537

451:                                              ; preds = %445
  %452 = load i8*, i8** %6, align 8
  %453 = call i32 @parse_whitespace_rule(i8* %452)
  store i32 %453, i32* @whitespace_rule_cfg, align 4
  store i32 0, i32* %4, align 4
  br label %537

454:                                              ; preds = %441
  %455 = load i8*, i8** %5, align 8
  %456 = call i32 @strcmp(i8* %455, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i64 0, i64 0))
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %462, label %458

458:                                              ; preds = %454
  %459 = load i8*, i8** %5, align 8
  %460 = load i8*, i8** %6, align 8
  %461 = call i32 @git_config_bool(i8* %459, i8* %460)
  store i32 %461, i32* @fsync_object_files, align 4
  store i32 0, i32* %4, align 4
  br label %537

462:                                              ; preds = %454
  %463 = load i8*, i8** %5, align 8
  %464 = call i32 @strcmp(i8* %463, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i64 0, i64 0))
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %470, label %466

466:                                              ; preds = %462
  %467 = load i8*, i8** %5, align 8
  %468 = load i8*, i8** %6, align 8
  %469 = call i32 @git_config_bool(i8* %467, i8* %468)
  store i32 %469, i32* @core_preload_index, align 4
  store i32 0, i32* %4, align 4
  br label %537

470:                                              ; preds = %462
  %471 = load i8*, i8** %5, align 8
  %472 = call i32 @strcmp(i8* %471, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0))
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %492, label %474

474:                                              ; preds = %470
  %475 = load i8*, i8** %6, align 8
  %476 = call i32 @strcmp(i8* %475, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0))
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %480, label %478

478:                                              ; preds = %474
  %479 = load i32, i32* @OBJECT_CREATION_USES_RENAMES, align 4
  store i32 %479, i32* @object_creation_mode, align 4
  br label %491

480:                                              ; preds = %474
  %481 = load i8*, i8** %6, align 8
  %482 = call i32 @strcmp(i8* %481, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0))
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %486, label %484

484:                                              ; preds = %480
  %485 = load i32, i32* @OBJECT_CREATION_USES_HARDLINKS, align 4
  store i32 %485, i32* @object_creation_mode, align 4
  br label %490

486:                                              ; preds = %480
  %487 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.48, i64 0, i64 0))
  %488 = load i8*, i8** %6, align 8
  %489 = call i32 (i32, ...) @die(i32 %487, i8* %488)
  br label %490

490:                                              ; preds = %486, %484
  br label %491

491:                                              ; preds = %490, %478
  store i32 0, i32* %4, align 4
  br label %537

492:                                              ; preds = %470
  %493 = load i8*, i8** %5, align 8
  %494 = call i32 @strcmp(i8* %493, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i64 0, i64 0))
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %500, label %496

496:                                              ; preds = %492
  %497 = load i8*, i8** %5, align 8
  %498 = load i8*, i8** %6, align 8
  %499 = call i32 @git_config_bool(i8* %497, i8* %498)
  store i32 %499, i32* @core_apply_sparse_checkout, align 4
  store i32 0, i32* %4, align 4
  br label %537

500:                                              ; preds = %492
  %501 = load i8*, i8** %5, align 8
  %502 = call i32 @strcmp(i8* %501, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i64 0, i64 0))
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %508, label %504

504:                                              ; preds = %500
  %505 = load i8*, i8** %5, align 8
  %506 = load i8*, i8** %6, align 8
  %507 = call i32 @git_config_bool(i8* %505, i8* %506)
  store i32 %507, i32* @precomposed_unicode, align 4
  store i32 0, i32* %4, align 4
  br label %537

508:                                              ; preds = %500
  %509 = load i8*, i8** %5, align 8
  %510 = call i32 @strcmp(i8* %509, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0))
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %516, label %512

512:                                              ; preds = %508
  %513 = load i8*, i8** %5, align 8
  %514 = load i8*, i8** %6, align 8
  %515 = call i32 @git_config_bool(i8* %513, i8* %514)
  store i32 %515, i32* @protect_hfs, align 4
  store i32 0, i32* %4, align 4
  br label %537

516:                                              ; preds = %508
  %517 = load i8*, i8** %5, align 8
  %518 = call i32 @strcmp(i8* %517, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0))
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %524, label %520

520:                                              ; preds = %516
  %521 = load i8*, i8** %5, align 8
  %522 = load i8*, i8** %6, align 8
  %523 = call i32 @git_config_bool(i8* %521, i8* %522)
  store i32 %523, i32* @protect_ntfs, align 4
  store i32 0, i32* %4, align 4
  br label %537

524:                                              ; preds = %516
  %525 = load i8*, i8** %5, align 8
  %526 = call i32 @strcmp(i8* %525, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i64 0, i64 0))
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %532, label %528

528:                                              ; preds = %524
  %529 = load i8*, i8** %5, align 8
  %530 = load i8*, i8** %6, align 8
  %531 = call i32 @git_config_bool(i8* %529, i8* %530)
  store i32 %531, i32* @read_replace_refs, align 4
  store i32 0, i32* %4, align 4
  br label %537

532:                                              ; preds = %524
  %533 = load i8*, i8** %5, align 8
  %534 = load i8*, i8** %6, align 8
  %535 = load i8*, i8** %7, align 8
  %536 = call i32 @platform_core_config(i8* %533, i8* %534, i8* %535)
  store i32 %536, i32* %4, align 4
  br label %537

537:                                              ; preds = %532, %528, %520, %512, %504, %496, %491, %466, %458, %451, %448, %437, %429, %424, %419, %396, %385, %378, %371, %366, %329, %318, %303, %301, %286, %278, %270, %262, %244, %207, %179, %174, %168, %147, %136, %131, %104, %96, %88, %80, %72, %64, %56, %48, %24, %16
  %538 = load i32, i32* %4, align 4
  ret i32 %538
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_bool(i8*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @git_config_pathname(i32*, i8*, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @git_config_int(i8*, i8*) #1

declare dso_local i32 @error(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @set_disambiguate_hint_config(i8*, i8*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i8* @git_config_ulong(i8*, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @git_config_string(i32*, i8*, i8*) #1

declare dso_local i32 @parse_whitespace_rule(i8*) #1

declare dso_local i32 @platform_core_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
