; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_mingw_spawnve_fd.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_mingw_spawnve_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinfo_t = type { %struct.pinfo_t*, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32, i8*, i8*, i8*, i32 }
%struct.strbuf = type { i32, i64* }

@MAX_PATH = common dso_local global i32 0, align 4
@CREATE_UNICODE_ENVIRONMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i32] [i32 67, i32 79, i32 78, i32 79, i32 85, i32 84, i32 36, i32 0], align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@DETACHED_PROCESS = common dso_local global i32 0, align 4
@STARTF_USESTDHANDLES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@pinfo_cs = common dso_local global i32 0, align 4
@pinfo = common dso_local global %struct.pinfo_t* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**, i8*, i32, i32, i32, i32)* @mingw_spawnve_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mingw_spawnve_fd(i8* %0, i8** %1, i8** %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_6__, align 8
  %19 = alloca %struct.TYPE_6__, align 8
  %20 = alloca %struct.strbuf, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i8* (i8*)*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.pinfo_t*, align 8
  store i8* %0, i8** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i8** %2, i8*** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %34 = load i32, i32* @MAX_PATH, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %21, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %22, align 8
  %38 = load i32, i32* @MAX_PATH, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %23, align 8
  store i8* null, i8** %25, align 8
  %41 = load i32, i32* @CREATE_UNICODE_ENVIRONMENT, align 4
  store i32 %41, i32* %26, align 4
  %42 = load i8**, i8*** %11, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @is_msys2_sh(i8* %43)
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* (i8*)* @quote_arg_msys2, i8* (i8*)* @quote_arg_msvc
  store i8* (i8*)* %47, i8* (i8*)** %29, align 8
  %48 = call i32 (...) @do_unset_environment_variables()
  %49 = load i32, i32* @GENERIC_WRITE, align 4
  %50 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %51 = load i32, i32* @OPEN_EXISTING, align 4
  %52 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %53 = call i64 @CreateFileW(i8* bitcast ([8 x i32]* @.str to i8*), i32 %49, i32 %50, i32* null, i32 %51, i32 %52, i32* null)
  store i64 %53, i64* %28, align 8
  %54 = load i64, i64* %28, align 8
  %55 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %8
  %58 = load i32, i32* @DETACHED_PROCESS, align 4
  %59 = load i32, i32* %26, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %26, align 4
  br label %64

61:                                               ; preds = %8
  %62 = load i64, i64* %28, align 8
  %63 = call i32 @CloseHandle(i64 %62)
  br label %64

64:                                               ; preds = %61, %57
  %65 = call i32 @memset(%struct.TYPE_6__* %18, i32 0, i32 56)
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 56, i32* %66, align 8
  %67 = load i32, i32* @STARTF_USESTDHANDLES, align 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 7
  store i32 %67, i32* %68, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i8* @winansi_get_osfhandle(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 6
  store i8* %70, i8** %71, align 8
  %72 = load i32, i32* %16, align 4
  %73 = call i8* @winansi_get_osfhandle(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 5
  store i8* %73, i8** %74, align 8
  %75 = load i32, i32* %17, align 4
  %76 = call i8* @winansi_get_osfhandle(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 4
  store i8* %76, i8** %77, align 8
  %78 = load i8**, i8*** %11, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %64
  %82 = load i8*, i8** %10, align 8
  %83 = load i8**, i8*** %11, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @strcmp(i8* %82, i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 0, i8* %88, align 16
  br label %95

89:                                               ; preds = %81, %64
  %90 = load i8*, i8** %10, align 8
  %91 = call i64 @xutftowcs_path(i8* %37, i8* %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %30, align 4
  br label %216

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %87
  %96 = load i8*, i8** %13, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i8*, i8** %13, align 8
  %100 = call i64 @xutftowcs_path(i8* %40, i8* %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %30, align 4
  br label %216

103:                                              ; preds = %98, %95
  %104 = call i32 @strbuf_init(%struct.strbuf* %20, i32 0)
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = load i8* (i8*)*, i8* (i8*)** %29, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = call i8* %108(i8* %109)
  store i8* %110, i8** %31, align 8
  %111 = load i8*, i8** %31, align 8
  %112 = call i32 @strbuf_addstr(%struct.strbuf* %20, i8* %111)
  %113 = load i8*, i8** %31, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = icmp ne i8* %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load i8*, i8** %31, align 8
  %118 = call i32 @free(i8* %117)
  br label %119

119:                                              ; preds = %116, %107
  br label %120

120:                                              ; preds = %119, %103
  br label %121

121:                                              ; preds = %147, %120
  %122 = load i8**, i8*** %11, align 8
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %150

125:                                              ; preds = %121
  %126 = load i8* (i8*)*, i8* (i8*)** %29, align 8
  %127 = load i8**, i8*** %11, align 8
  %128 = load i8*, i8** %127, align 8
  %129 = call i8* %126(i8* %128)
  store i8* %129, i8** %32, align 8
  %130 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 1
  %131 = load i64*, i64** %130, align 8
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = call i32 @strbuf_addch(%struct.strbuf* %20, i8 signext 32)
  br label %136

136:                                              ; preds = %134, %125
  %137 = load i8*, i8** %32, align 8
  %138 = call i32 @strbuf_addstr(%struct.strbuf* %20, i8* %137)
  %139 = load i8*, i8** %32, align 8
  %140 = load i8**, i8*** %11, align 8
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %139, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load i8*, i8** %32, align 8
  %145 = call i32 @free(i8* %144)
  br label %146

146:                                              ; preds = %143, %136
  br label %147

147:                                              ; preds = %146
  %148 = load i8**, i8*** %11, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i32 1
  store i8** %149, i8*** %11, align 8
  br label %121

150:                                              ; preds = %121
  %151 = load i8*, i8** %24, align 8
  %152 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @st_mult(i32 2, i32 %153)
  %155 = call i32 @st_add(i32 %154, i32 1)
  %156 = call i32 @ALLOC_ARRAY(i8* %151, i32 %155)
  %157 = load i8*, i8** %24, align 8
  %158 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = mul nsw i32 2, %161
  %163 = add nsw i32 %162, 1
  %164 = call i32 @xutftowcs(i8* %157, i64* %159, i32 %163)
  %165 = call i32 @strbuf_release(%struct.strbuf* %20)
  %166 = load i8**, i8*** %12, align 8
  %167 = call i8* @make_environment_block(i8** %166)
  store i8* %167, i8** %25, align 8
  %168 = call i32 @memset(%struct.TYPE_6__* %19, i32 0, i32 56)
  %169 = load i8, i8* %37, align 16
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %150
  br label %174

173:                                              ; preds = %150
  br label %174

174:                                              ; preds = %173, %172
  %175 = phi i8* [ %37, %172 ], [ null, %173 ]
  %176 = load i8*, i8** %24, align 8
  %177 = load i32, i32* @TRUE, align 4
  %178 = load i32, i32* %26, align 4
  %179 = load i8*, i8** %25, align 8
  %180 = load i8*, i8** %13, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %184

183:                                              ; preds = %174
  br label %184

184:                                              ; preds = %183, %182
  %185 = phi i8* [ %40, %182 ], [ null, %183 ]
  %186 = call i32 @CreateProcessW(i8* %175, i8* %176, i32* null, i32* null, i32 %177, i32 %178, i8* %179, i8* %185, %struct.TYPE_6__* %18, %struct.TYPE_6__* %19)
  store i32 %186, i32* %27, align 4
  %187 = load i8*, i8** %25, align 8
  %188 = call i32 @free(i8* %187)
  %189 = load i8*, i8** %24, align 8
  %190 = call i32 @free(i8* %189)
  %191 = load i32, i32* %27, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %184
  %194 = load i32, i32* @ENOENT, align 4
  store i32 %194, i32* @errno, align 4
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %30, align 4
  br label %216

195:                                              ; preds = %184
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @CloseHandle(i64 %197)
  %199 = call i32 @EnterCriticalSection(i32* @pinfo_cs)
  %200 = call %struct.pinfo_t* @xmalloc(i32 16)
  store %struct.pinfo_t* %200, %struct.pinfo_t** %33, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.pinfo_t*, %struct.pinfo_t** %33, align 8
  %204 = getelementptr inbounds %struct.pinfo_t, %struct.pinfo_t* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 4
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.pinfo_t*, %struct.pinfo_t** %33, align 8
  %208 = getelementptr inbounds %struct.pinfo_t, %struct.pinfo_t* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 8
  %209 = load %struct.pinfo_t*, %struct.pinfo_t** @pinfo, align 8
  %210 = load %struct.pinfo_t*, %struct.pinfo_t** %33, align 8
  %211 = getelementptr inbounds %struct.pinfo_t, %struct.pinfo_t* %210, i32 0, i32 0
  store %struct.pinfo_t* %209, %struct.pinfo_t** %211, align 8
  %212 = load %struct.pinfo_t*, %struct.pinfo_t** %33, align 8
  store %struct.pinfo_t* %212, %struct.pinfo_t** @pinfo, align 8
  %213 = call i32 @LeaveCriticalSection(i32* @pinfo_cs)
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  store i32 %215, i32* %9, align 4
  store i32 1, i32* %30, align 4
  br label %216

216:                                              ; preds = %195, %193, %102, %93
  %217 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %217)
  %218 = load i32, i32* %9, align 4
  ret i32 %218
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @is_msys2_sh(i8*) #2

declare dso_local i8* @quote_arg_msys2(i8*) #2

declare dso_local i8* @quote_arg_msvc(i8*) #2

declare dso_local i32 @do_unset_environment_variables(...) #2

declare dso_local i64 @CreateFileW(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i8* @winansi_get_osfhandle(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @xutftowcs_path(i8*, i8*) #2

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @ALLOC_ARRAY(i8*, i32) #2

declare dso_local i32 @st_add(i32, i32) #2

declare dso_local i32 @st_mult(i32, i32) #2

declare dso_local i32 @xutftowcs(i8*, i64*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i8* @make_environment_block(i8**) #2

declare dso_local i32 @CreateProcessW(i8*, i8*, i32*, i32*, i32, i32, i8*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*) #2

declare dso_local i32 @EnterCriticalSection(i32*) #2

declare dso_local %struct.pinfo_t* @xmalloc(i32) #2

declare dso_local i32 @LeaveCriticalSection(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
