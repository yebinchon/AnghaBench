; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store_subr.c_bhnd_nvstore_parse_name_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store_subr.c_bhnd_nvstore_parse_name_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__, i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8*, i64 }
%struct.TYPE_6__ = type { i8* }

@BHND_NVRAM_DATA_CAP_DEVPATHS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"devpath\00", align 1
@BHND_NVSTORE_NAME_INTERNAL = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@BHND_NVSTORE_ALIAS_DECL = common dso_local global i8* null, align 8
@BHND_NVSTORE_PATH_ALIAS = common dso_local global i8* null, align 8
@BHND_NVSTORE_VAR = common dso_local global i8* null, align 8
@BHND_NVSTORE_PATH_STRING = common dso_local global i8* null, align 8
@BHND_NVSTORE_ROOT_PATH = common dso_local global i8* null, align 8
@BHND_NVSTORE_ROOT_PATH_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvstore_parse_name_info(i8* %0, i64 %1, i32 %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @BHND_NVRAM_DATA_CAP_DEVPATHS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %172

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = call i64 @strncmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %21
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @BHND_NVSTORE_NAME_INTERNAL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @bhnd_nvram_validate_name(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOENT, align 4
  store i32 %35, i32* %5, align 4
  br label %202

36:                                               ; preds = %30, %26
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i8* @strtoul(i8* %41, i8** %11, i32 10)
  store i8* %42, i8** %12, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ne i8* %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %36
  %47 = load i8*, i8** %11, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load i8*, i8** @BHND_NVSTORE_ALIAS_DECL, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @BHND_NVSTORE_PATH_ALIAS, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i8* %61, i8** %65, align 8
  store i32 0, i32* %5, align 4
  br label %202

66:                                               ; preds = %46, %36
  br label %67

67:                                               ; preds = %66, %21
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @bhnd_nv_isdigit(i8 signext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %110

72:                                               ; preds = %67
  %73 = load i8*, i8** %6, align 8
  %74 = call i8* @strtoul(i8* %73, i8** %11, i32 10)
  store i8* %74, i8** %13, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = icmp ne i8* %75, %76
  br i1 %77, label %78, label %109

78:                                               ; preds = %72
  %79 = load i8*, i8** %11, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 58
  br i1 %82, label %83, label %109

83:                                               ; preds = %78
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* @BHND_NVSTORE_NAME_INTERNAL, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @bhnd_nvram_validate_name(i8* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* @ENOENT, align 4
  store i32 %92, i32* %5, align 4
  br label %202

93:                                               ; preds = %87, %83
  %94 = load i8*, i8** @BHND_NVSTORE_VAR, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** @BHND_NVSTORE_PATH_ALIAS, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i8* %104, i8** %108, align 8
  store i32 0, i32* %5, align 4
  br label %202

109:                                              ; preds = %78, %72
  br label %110

110:                                              ; preds = %109, %67
  %111 = load i8*, i8** %6, align 8
  %112 = call i8* @strrchr(i8* %111, i8 signext 47)
  store i8* %112, i8** %10, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %171

114:                                              ; preds = %110
  %115 = load i8*, i8** %10, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  store i64 %119, i64* %16, align 8
  %120 = load i8*, i8** %6, align 8
  store i8* %120, i8** %14, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = load i64, i64* %16, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  store i8* %124, i8** %15, align 8
  br label %125

125:                                              ; preds = %138, %114
  %126 = load i64, i64* %16, align 8
  %127 = icmp ugt i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load i8*, i8** %14, align 8
  %130 = load i64, i64* %16, align 8
  %131 = sub i64 %130, 1
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 47
  br label %136

136:                                              ; preds = %128, %125
  %137 = phi i1 [ false, %125 ], [ %135, %128 ]
  br i1 %137, label %138, label %141

138:                                              ; preds = %136
  %139 = load i64, i64* %16, align 8
  %140 = add i64 %139, -1
  store i64 %140, i64* %16, align 8
  br label %125

141:                                              ; preds = %136
  %142 = load i64, i64* %7, align 8
  %143 = load i64, i64* @BHND_NVSTORE_NAME_INTERNAL, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load i8*, i8** %15, align 8
  %147 = call i32 @bhnd_nvram_validate_name(i8* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* @ENOENT, align 4
  store i32 %150, i32* %5, align 4
  br label %202

151:                                              ; preds = %145, %141
  %152 = load i8*, i8** @BHND_NVSTORE_VAR, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 3
  store i8* %152, i8** %154, align 8
  %155 = load i8*, i8** @BHND_NVSTORE_PATH_STRING, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  store i8* %155, i8** %157, align 8
  %158 = load i8*, i8** %15, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  %161 = load i8*, i8** %14, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  store i8* %161, i8** %165, align 8
  %166 = load i64, i64* %16, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  store i64 %166, i64* %170, align 8
  store i32 0, i32* %5, align 4
  br label %202

171:                                              ; preds = %110
  br label %172

172:                                              ; preds = %171, %4
  %173 = load i64, i64* %7, align 8
  %174 = load i64, i64* @BHND_NVSTORE_NAME_INTERNAL, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %172
  %177 = load i8*, i8** %6, align 8
  %178 = call i32 @bhnd_nvram_validate_name(i8* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %176
  %181 = load i32, i32* @ENOENT, align 4
  store i32 %181, i32* %5, align 4
  br label %202

182:                                              ; preds = %176, %172
  %183 = load i8*, i8** @BHND_NVSTORE_VAR, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 3
  store i8* %183, i8** %185, align 8
  %186 = load i8*, i8** @BHND_NVSTORE_PATH_STRING, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 2
  store i8* %186, i8** %188, align 8
  %189 = load i8*, i8** %6, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  store i8* %189, i8** %191, align 8
  %192 = load i8*, i8** @BHND_NVSTORE_ROOT_PATH, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  store i8* %192, i8** %196, align 8
  %197 = load i64, i64* @BHND_NVSTORE_ROOT_PATH_LEN, align 8
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  store i64 %197, i64* %201, align 8
  store i32 0, i32* %5, align 4
  br label %202

202:                                              ; preds = %182, %180, %151, %149, %93, %91, %51, %34
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bhnd_nvram_validate_name(i8*) #1

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @bhnd_nv_isdigit(i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
