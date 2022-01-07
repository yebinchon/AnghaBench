; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_automountd.c_handle_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_automountd.c_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_daemon_request = type { i8*, i8*, i8*, i8*, i8*, i32 }
%struct.node = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [70 x i8] c"got request %d: from %s, path %s, prefix \22%s\22, key \22%s\22, options \22%s\22\00", align 1
@request_id = common dso_local global i32 0, align 4
@exit_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"map \00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"invalid mountfrom \22%s\22; failing request\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"[kernel request]\00", align 1
@lineno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"map may contain wildcard entries\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"map does not contain wildcard entries\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"map %s does not contain key for \22%s\22; failing mount\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"found node defined at %s:%d; not a mountpoint\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"nobrowse\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"skipping map %s due to \22nobrowse\22 option; exiting\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"nothing to mount; exiting\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"found node defined at %s:%d; it is a mountpoint\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"variable expansion failed for %s; failing mount\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"automounted\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"fstype=\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"fstype not specified in options; defaulting to \22nfs\22\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"retrycnt=\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"retrycnt not specified in options; defaulting to 1\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"retrycnt=1\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"retrycnt\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"mount\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"mount failed\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"mount done; exiting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.autofs_daemon_request*, i8*, i32)* @handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_request(%struct.autofs_daemon_request* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.autofs_daemon_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.node*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.autofs_daemon_request* %0, %struct.autofs_daemon_request** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %21 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %24 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %27 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %30 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %33 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %36 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %35, i32 0, i32 4
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %25, i8* %28, i8* %31, i8* %34, i8* %37)
  %39 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %40 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* @request_id, align 4
  %42 = load i32, i32* @exit_callback, align 4
  %43 = call i32 @atexit(i32 %42)
  %44 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %45 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strncmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %3
  %50 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %51 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %49, %3
  %55 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %56 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  store i8* %58, i8** %7, align 8
  %59 = call %struct.node* (...) @node_new_root()
  store %struct.node* %59, %struct.node** %8, align 8
  %60 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %61 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %54
  %68 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %69 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67, %54
  %74 = load %struct.node*, %struct.node** %8, align 8
  store %struct.node* %74, %struct.node** %9, align 8
  %75 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %76 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @checked_strdup(i8* %77)
  store i8* %78, i8** %12, align 8
  br label %104

79:                                               ; preds = %67
  %80 = load %struct.node*, %struct.node** %8, align 8
  %81 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %82 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @checked_strdup(i8* %83)
  %85 = load i8*, i8** %7, align 8
  %86 = call i8* @checked_strdup(i8* %85)
  %87 = call i8* @checked_strdup(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i32, i32* @lineno, align 4
  %89 = call %struct.node* @node_new_map(%struct.node* %80, i8* %84, i32* null, i8* %86, i8* %87, i32 %88)
  store %struct.node* %89, %struct.node** %9, align 8
  %90 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %91 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %79
  store i8* null, i8** %12, align 8
  br label %103

98:                                               ; preds = %79
  %99 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %100 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = call i8* @checked_strdup(i8* %101)
  store i8* %102, i8** %12, align 8
  br label %103

103:                                              ; preds = %98, %97
  br label %104

104:                                              ; preds = %103, %73
  %105 = load %struct.node*, %struct.node** %9, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = call i32 @parse_map(%struct.node* %105, i8* %106, i8* %107, i32* %19)
  %109 = load i32, i32* %19, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  %112 = load %struct.node*, %struct.node** %9, align 8
  %113 = call i32 @node_has_wildcards(%struct.node* %112)
  store i32 %113, i32* %19, align 4
  br label %114

114:                                              ; preds = %111, %104
  %115 = load i32, i32* %19, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %121

119:                                              ; preds = %114
  %120 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %117
  %122 = load i8*, i8** %12, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load %struct.node*, %struct.node** %8, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = call i32 @node_expand_wildcard(%struct.node* %125, i8* %126)
  br label %128

128:                                              ; preds = %124, %121
  %129 = load %struct.node*, %struct.node** %8, align 8
  %130 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %131 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call %struct.node* @node_find(%struct.node* %129, i8* %132)
  store %struct.node* %133, %struct.node** %10, align 8
  %134 = load %struct.node*, %struct.node** %10, align 8
  %135 = icmp eq %struct.node* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %128
  %137 = load i8*, i8** %7, align 8
  %138 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %139 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i8* %137, i8* %140)
  br label %142

142:                                              ; preds = %136, %128
  %143 = load %struct.node*, %struct.node** %10, align 8
  %144 = call i8* @node_options(%struct.node* %143)
  store i8* %144, i8** %13, align 8
  %145 = load i8*, i8** %13, align 8
  %146 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %147 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %146, i32 0, i32 4
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @concat(i8* %145, i8 signext 44, i8* %148)
  store i8* %149, i8** %13, align 8
  %150 = load i8*, i8** %5, align 8
  %151 = load i8*, i8** %13, align 8
  %152 = call i8* @concat(i8* %150, i8 signext 44, i8* %151)
  store i8* %152, i8** %13, align 8
  %153 = load %struct.node*, %struct.node** %10, align 8
  %154 = getelementptr inbounds %struct.node, %struct.node* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %205

157:                                              ; preds = %142
  %158 = load %struct.node*, %struct.node** %10, align 8
  %159 = getelementptr inbounds %struct.node, %struct.node* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.node*, %struct.node** %10, align 8
  %162 = getelementptr inbounds %struct.node, %struct.node* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %160, i32 %163)
  %165 = call i8* @pick_option(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %13)
  store i8* %165, i8** %15, align 8
  %166 = load i8*, i8** %15, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %176

168:                                              ; preds = %157
  %169 = load i8*, i8** %12, align 8
  %170 = icmp eq i8* %169, null
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load i8*, i8** %7, align 8
  %173 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i8* %172)
  %174 = call i32 @done(i32 0, i32 1)
  %175 = call i32 @quick_exit(i32 0)
  br label %176

176:                                              ; preds = %171, %168, %157
  %177 = load %struct.node*, %struct.node** %10, align 8
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @create_subtree(%struct.node* %177, i32 %178)
  %180 = load i32, i32* %6, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %200

182:                                              ; preds = %176
  %183 = load i8*, i8** %12, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %200

185:                                              ; preds = %182
  %186 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %187 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = load i8*, i8** %12, align 8
  %190 = call i8* @concat(i8* %188, i8 signext 47, i8* %189)
  store i8* %190, i8** %17, align 8
  %191 = load %struct.node*, %struct.node** %8, align 8
  %192 = load i8*, i8** %17, align 8
  %193 = call %struct.node* @node_find(%struct.node* %191, i8* %192)
  store %struct.node* %193, %struct.node** %10, align 8
  %194 = load %struct.node*, %struct.node** %10, align 8
  %195 = icmp ne %struct.node* %194, null
  br i1 %195, label %196, label %199

196:                                              ; preds = %185
  %197 = load %struct.node*, %struct.node** %10, align 8
  %198 = call i32 @create_subtree(%struct.node* %197, i32 0)
  br label %199

199:                                              ; preds = %196, %185
  br label %200

200:                                              ; preds = %199, %182, %176
  %201 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %202 = load i32, i32* %19, align 4
  %203 = call i32 @done(i32 0, i32 %202)
  %204 = call i32 @quick_exit(i32 0)
  br label %205

205:                                              ; preds = %200, %142
  %206 = load %struct.node*, %struct.node** %10, align 8
  %207 = getelementptr inbounds %struct.node, %struct.node* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.node*, %struct.node** %10, align 8
  %210 = getelementptr inbounds %struct.node, %struct.node* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i32 %208, i32 %211)
  %213 = load i8*, i8** %12, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %205
  %216 = load %struct.node*, %struct.node** %10, align 8
  %217 = load i8*, i8** %12, align 8
  %218 = call i32 @node_expand_ampersand(%struct.node* %216, i8* %217)
  br label %219

219:                                              ; preds = %215, %205
  %220 = load %struct.node*, %struct.node** %10, align 8
  %221 = call i32 @node_expand_defined(%struct.node* %220)
  store i32 %221, i32* %18, align 4
  %222 = load i32, i32* %18, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %219
  %225 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %226 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %225, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i8* %227)
  br label %229

229:                                              ; preds = %224, %219
  %230 = load i8*, i8** %13, align 8
  %231 = call i8* @concat(i8* %230, i8 signext 44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  store i8* %231, i8** %13, align 8
  %232 = call i8* @pick_option(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %13)
  %233 = call i8* @pick_option(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** %13)
  store i8* %233, i8** %14, align 8
  %234 = load i8*, i8** %14, align 8
  %235 = icmp eq i8* %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %229
  %237 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0))
  %238 = call i8* @checked_strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  store i8* %238, i8** %14, align 8
  br label %239

239:                                              ; preds = %236, %229
  %240 = load i8*, i8** %14, align 8
  %241 = call i64 @strcmp(i8* %240, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %257

243:                                              ; preds = %239
  %244 = call i8* @pick_option(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** %13)
  store i8* %244, i8** %16, align 8
  %245 = load i8*, i8** %16, align 8
  %246 = icmp eq i8* %245, null
  br i1 %246, label %247, label %251

247:                                              ; preds = %243
  %248 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i64 0, i64 0))
  %249 = load i8*, i8** %13, align 8
  %250 = call i8* @concat(i8* %249, i8 signext 44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  store i8* %250, i8** %13, align 8
  br label %256

251:                                              ; preds = %243
  %252 = load i8*, i8** %13, align 8
  %253 = load i8*, i8** %16, align 8
  %254 = call i8* @concat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8 signext 61, i8* %253)
  %255 = call i8* @concat(i8* %252, i8 signext 44, i8* %254)
  store i8* %255, i8** %13, align 8
  br label %256

256:                                              ; preds = %251, %247
  br label %257

257:                                              ; preds = %256, %239
  %258 = load i8*, i8** %14, align 8
  %259 = load i8*, i8** %13, align 8
  %260 = load %struct.node*, %struct.node** %10, align 8
  %261 = getelementptr inbounds %struct.node, %struct.node* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = load %struct.autofs_daemon_request*, %struct.autofs_daemon_request** %4, align 8
  %264 = getelementptr inbounds %struct.autofs_daemon_request, %struct.autofs_daemon_request* %263, i32 0, i32 1
  %265 = load i8*, i8** %264, align 8
  %266 = call i32* @auto_popen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* %258, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %259, i32* %262, i8* %265, i32* null)
  store i32* %266, i32** %11, align 8
  %267 = load i32*, i32** %11, align 8
  %268 = icmp ne i32* %267, null
  %269 = zext i1 %268 to i32
  %270 = call i32 @assert(i32 %269)
  %271 = load i32*, i32** %11, align 8
  %272 = call i32 @auto_pclose(i32* %271)
  store i32 %272, i32* %18, align 4
  %273 = load i32, i32* %18, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %257
  %276 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  br label %277

277:                                              ; preds = %275, %257
  %278 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0))
  %279 = load i32, i32* %19, align 4
  %280 = call i32 @done(i32 0, i32 %279)
  %281 = call i32 @quick_exit(i32 0)
  ret void
}

declare dso_local i32 @log_debugx(i8*, ...) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @log_errx(i32, i8*, ...) #1

declare dso_local %struct.node* @node_new_root(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @checked_strdup(i8*) #1

declare dso_local %struct.node* @node_new_map(%struct.node*, i8*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @parse_map(%struct.node*, i8*, i8*, i32*) #1

declare dso_local i32 @node_has_wildcards(%struct.node*) #1

declare dso_local i32 @node_expand_wildcard(%struct.node*, i8*) #1

declare dso_local %struct.node* @node_find(%struct.node*, i8*) #1

declare dso_local i8* @node_options(%struct.node*) #1

declare dso_local i8* @concat(i8*, i8 signext, i8*) #1

declare dso_local i8* @pick_option(i8*, i8**) #1

declare dso_local i32 @done(i32, i32) #1

declare dso_local i32 @quick_exit(i32) #1

declare dso_local i32 @create_subtree(%struct.node*, i32) #1

declare dso_local i32 @node_expand_ampersand(%struct.node*, i8*) #1

declare dso_local i32 @node_expand_defined(%struct.node*) #1

declare dso_local i32* @auto_popen(i8*, i8*, i8*, i8*, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @auto_pclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
