; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_get_principal_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_get_principal_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i8* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@GSS_C_NT_USER_NAME = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"gss_import_name\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"gss_canonicalize_name\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"gss_export_name\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_gss_get_principal_name(%struct.TYPE_7__** %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_8__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @rpc_gss_mech_to_oid(i8* %20, i32* %14)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %6, align 4
  br label %158

25:                                               ; preds = %5
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %15, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %15, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %15, align 8
  br label %39

39:                                               ; preds = %32, %25
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %15, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %15, align 8
  br label %49

49:                                               ; preds = %42, %39
  %50 = load i64, i64* %15, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i8* @mem_alloc(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load i64, i64* %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @strcpy(i8* %57, i8* %58)
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strcat(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @strcat(i8* %67, i8* %68)
  br label %70

70:                                               ; preds = %62, %49
  %71 = load i8*, i8** %11, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strcat(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @strcat(i8* %78, i8* %79)
  br label %81

81:                                               ; preds = %73, %70
  %82 = load i32, i32* @GSS_C_NT_USER_NAME, align 4
  %83 = call i64 @gss_import_name(i64* %13, %struct.TYPE_8__* %16, i32 %82, i32* %17)
  store i64 %83, i64* %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @mem_free(i8* %85, i64 %87)
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* @GSS_S_COMPLETE, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %81
  %93 = load i32, i32* %14, align 4
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @rpc_gss_log_status(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %93, i64 %94, i64 %95)
  %97 = load i32, i32* @FALSE, align 4
  store i32 %97, i32* %6, align 4
  br label %158

98:                                               ; preds = %81
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i64 @gss_canonicalize_name(i64* %13, i32 %99, i32 %100, i32* %18)
  store i64 %101, i64* %12, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* @GSS_S_COMPLETE, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = load i32, i32* %14, align 4
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %13, align 8
  %109 = call i32 @rpc_gss_log_status(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %106, i64 %107, i64 %108)
  %110 = call i32 @gss_release_name(i64* %13, i32* %17)
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %6, align 4
  br label %158

112:                                              ; preds = %98
  %113 = call i32 @gss_release_name(i64* %13, i32* %17)
  %114 = load i32, i32* %18, align 4
  %115 = call i64 @gss_export_name(i64* %13, i32 %114, %struct.TYPE_8__* %16)
  store i64 %115, i64* %12, align 8
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* @GSS_S_COMPLETE, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load i32, i32* %14, align 4
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* %13, align 8
  %123 = call i32 @rpc_gss_log_status(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %120, i64 %121, i64 %122)
  %124 = call i32 @gss_release_name(i64* %13, i32* %18)
  %125 = load i32, i32* @FALSE, align 4
  store i32 %125, i32* %6, align 4
  br label %158

126:                                              ; preds = %112
  %127 = call i32 @gss_release_name(i64* %13, i32* %18)
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add i64 4, %129
  %131 = trunc i64 %130 to i32
  %132 = call i8* @mem_alloc(i32 %131)
  %133 = bitcast i8* %132 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %133, %struct.TYPE_7__** %19, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %135 = icmp ne %struct.TYPE_7__* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %126
  %137 = call i32 @gss_release_buffer(i64* %13, %struct.TYPE_8__* %16)
  %138 = load i32, i32* @FALSE, align 4
  store i32 %138, i32* %6, align 4
  br label %158

139:                                              ; preds = %126
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i32 @memcpy(i32 %147, i8* %149, i32 %152)
  %154 = call i32 @gss_release_buffer(i64* %13, %struct.TYPE_8__* %16)
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %156 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %155, %struct.TYPE_7__** %156, align 8
  %157 = load i32, i32* @TRUE, align 4
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %139, %136, %119, %105, %92, %23
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i32 @rpc_gss_mech_to_oid(i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @mem_alloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @gss_import_name(i64*, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @mem_free(i8*, i64) #1

declare dso_local i32 @rpc_gss_log_status(i8*, i32, i64, i64) #1

declare dso_local i64 @gss_canonicalize_name(i64*, i32, i32, i32*) #1

declare dso_local i32 @gss_release_name(i64*, i32*) #1

declare dso_local i64 @gss_export_name(i64*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_8__*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
