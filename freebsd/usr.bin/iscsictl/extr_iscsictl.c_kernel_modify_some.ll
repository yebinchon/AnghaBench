; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/iscsictl/extr_iscsictl.c_kernel_modify_some.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/iscsictl/extr_iscsictl.c_kernel_modify_some.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session_state = type { i32, %struct.iscsi_session_conf }
%struct.iscsi_session_conf = type { i32, i32, i32, i32, i32 }
%struct.iscsi_session_list = type { i32, i32, i32, %struct.iscsi_session_state* }
%struct.iscsi_session_modify = type { i32, i32, i32, %struct.iscsi_session_state* }

@.str = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@ISCSISLIST = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"ISCSISLIST\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"session-id %u not found\00", align 1
@ENABLE_ON = common dso_local global i32 0, align 4
@ENABLE_OFF = common dso_local global i32 0, align 4
@ISCSISMODIFY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"ISCSISMODIFY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i8*, i8*, i8*, i32)* @kernel_modify_some to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_modify_some(i32 %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.iscsi_session_state*, align 8
  %16 = alloca %struct.iscsi_session_state*, align 8
  %17 = alloca %struct.iscsi_session_conf*, align 8
  %18 = alloca %struct.iscsi_session_list, align 8
  %19 = alloca %struct.iscsi_session_modify, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store %struct.iscsi_session_state* null, %struct.iscsi_session_state** %15, align 8
  store i32 1, i32* %21, align 4
  br label %23

23:                                               ; preds = %51, %7
  %24 = load %struct.iscsi_session_state*, %struct.iscsi_session_state** %15, align 8
  %25 = load i32, i32* %21, align 4
  %26 = zext i32 %25 to i64
  %27 = mul i64 %26, 24
  %28 = trunc i64 %27 to i32
  %29 = call %struct.iscsi_session_state* @realloc(%struct.iscsi_session_state* %24, i32 %28)
  store %struct.iscsi_session_state* %29, %struct.iscsi_session_state** %15, align 8
  %30 = load %struct.iscsi_session_state*, %struct.iscsi_session_state** %15, align 8
  %31 = icmp eq %struct.iscsi_session_state* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %23
  %35 = bitcast %struct.iscsi_session_list* %18 to %struct.iscsi_session_modify*
  %36 = call i32 @memset(%struct.iscsi_session_modify* %35, i32 0, i32 24)
  %37 = load i32, i32* %21, align 4
  %38 = getelementptr inbounds %struct.iscsi_session_list, %struct.iscsi_session_list* %18, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load %struct.iscsi_session_state*, %struct.iscsi_session_state** %15, align 8
  %40 = getelementptr inbounds %struct.iscsi_session_list, %struct.iscsi_session_list* %18, i32 0, i32 3
  store %struct.iscsi_session_state* %39, %struct.iscsi_session_state** %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @ISCSISLIST, align 4
  %43 = bitcast %struct.iscsi_session_list* %18 to %struct.iscsi_session_modify*
  %44 = call i32 @ioctl(i32 %41, i32 %42, %struct.iscsi_session_modify* %43)
  store i32 %44, i32* %22, align 4
  %45 = load i32, i32* %22, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %34
  %48 = load i64, i64* @errno, align 8
  %49 = load i64, i64* @EMSGSIZE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %21, align 4
  %53 = mul i32 %52, 4
  store i32 %53, i32* %21, align 4
  br label %23

54:                                               ; preds = %47, %34
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %22, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 (i32, i8*, ...) @xo_errx(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  store i32 0, i32* %20, align 4
  br label %61

61:                                               ; preds = %78, %60
  %62 = load i32, i32* %20, align 4
  %63 = getelementptr inbounds %struct.iscsi_session_list, %struct.iscsi_session_list* %18, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ult i32 %62, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load %struct.iscsi_session_state*, %struct.iscsi_session_state** %15, align 8
  %68 = load i32, i32* %20, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.iscsi_session_state, %struct.iscsi_session_state* %67, i64 %69
  store %struct.iscsi_session_state* %70, %struct.iscsi_session_state** %16, align 8
  %71 = load %struct.iscsi_session_state*, %struct.iscsi_session_state** %16, align 8
  %72 = getelementptr inbounds %struct.iscsi_session_state, %struct.iscsi_session_state* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %81

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %20, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %20, align 4
  br label %61

81:                                               ; preds = %76, %61
  %82 = load i32, i32* %20, align 4
  %83 = getelementptr inbounds %struct.iscsi_session_list, %struct.iscsi_session_list* %18, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (i32, i8*, ...) @xo_errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %86, %81
  %90 = load %struct.iscsi_session_state*, %struct.iscsi_session_state** %16, align 8
  %91 = getelementptr inbounds %struct.iscsi_session_state, %struct.iscsi_session_state* %90, i32 0, i32 1
  store %struct.iscsi_session_conf* %91, %struct.iscsi_session_conf** %17, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %17, align 8
  %96 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @strlcpy(i32 %97, i8* %98, i32 4)
  br label %100

100:                                              ; preds = %94, %89
  %101 = load i8*, i8** %11, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %17, align 8
  %105 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @strlcpy(i32 %106, i8* %107, i32 4)
  br label %109

109:                                              ; preds = %103, %100
  %110 = load i8*, i8** %12, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %17, align 8
  %114 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 @strlcpy(i32 %115, i8* %116, i32 4)
  br label %118

118:                                              ; preds = %112, %109
  %119 = load i8*, i8** %13, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %17, align 8
  %123 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i8*, i8** %13, align 8
  %126 = call i32 @strlcpy(i32 %124, i8* %125, i32 4)
  br label %127

127:                                              ; preds = %121, %118
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @ENABLE_ON, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %17, align 8
  %133 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %132, i32 0, i32 0
  store i32 1, i32* %133, align 4
  br label %142

134:                                              ; preds = %127
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* @ENABLE_OFF, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %17, align 8
  %140 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %139, i32 0, i32 0
  store i32 0, i32* %140, align 4
  br label %141

141:                                              ; preds = %138, %134
  br label %142

142:                                              ; preds = %141, %131
  %143 = call i32 @memset(%struct.iscsi_session_modify* %19, i32 0, i32 24)
  %144 = load i32, i32* %9, align 4
  %145 = getelementptr inbounds %struct.iscsi_session_modify, %struct.iscsi_session_modify* %19, i32 0, i32 1
  store i32 %144, i32* %145, align 4
  %146 = getelementptr inbounds %struct.iscsi_session_modify, %struct.iscsi_session_modify* %19, i32 0, i32 2
  %147 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %17, align 8
  %148 = call i32 @memcpy(i32* %146, %struct.iscsi_session_conf* %147, i32 4)
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @ISCSISMODIFY, align 4
  %151 = call i32 @ioctl(i32 %149, i32 %150, %struct.iscsi_session_modify* %19)
  store i32 %151, i32* %22, align 4
  %152 = load i32, i32* %22, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %142
  %155 = call i32 @xo_warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %142
  ret void
}

declare dso_local %struct.iscsi_session_state* @realloc(%struct.iscsi_session_state*, i32) #1

declare dso_local i32 @xo_err(i32, i8*) #1

declare dso_local i32 @memset(%struct.iscsi_session_modify*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.iscsi_session_modify*) #1

declare dso_local i32 @xo_errx(i32, i8*, ...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.iscsi_session_conf*, i32) #1

declare dso_local i32 @xo_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
