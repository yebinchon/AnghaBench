; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_parse_offload_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_parse_offload_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_offload_policy = type { i32, %struct.offload_rule* }
%struct.offload_rule = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to open file \22%s\22\00", align 1
@errno = common dso_local global i32 0, align 4
@DLT_EN10MB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to open pcap device\00", align 1
@EIO = common dso_local global i32 0, align 4
@REALLOC_STRIDE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to allocate memory for %d rules\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Error parsing line %d of \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Error while reading from file \22%s\22 at line %d\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"No valid rules found in \22%s\22\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.t4_offload_policy*)* @parse_offload_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_offload_policy(i8* %0, %struct.t4_offload_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.t4_offload_policy*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.offload_rule*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.t4_offload_policy* %1, %struct.t4_offload_policy** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @errno, align 4
  store i32 %22, i32* %3, align 4
  br label %139

23:                                               ; preds = %2
  %24 = load i32, i32* @DLT_EN10MB, align 4
  %25 = call i32* @pcap_open_dead(i32 %24, i32 128)
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @fclose(i32* %30)
  %32 = load i32, i32* @EIO, align 4
  store i32 %32, i32* %3, align 4
  br label %139

33:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %9, align 4
  %34 = load %struct.t4_offload_policy*, %struct.t4_offload_policy** %5, align 8
  %35 = getelementptr inbounds %struct.t4_offload_policy, %struct.t4_offload_policy* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.t4_offload_policy*, %struct.t4_offload_policy** %5, align 8
  %37 = getelementptr inbounds %struct.t4_offload_policy, %struct.t4_offload_policy* %36, i32 0, i32 1
  store %struct.offload_rule* null, %struct.offload_rule** %37, align 8
  store i8* null, i8** %7, align 8
  br label %38

38:                                               ; preds = %101, %49, %33
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @getline(i8** %7, i64* %11, i32* %39)
  store i64 %40, i64* %12, align 8
  %41 = icmp ne i64 %40, -1
  br i1 %41, label %42, label %106

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load i64, i64* %12, align 8
  %47 = call i64 @isempty_line(i8* %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %38

50:                                               ; preds = %42
  %51 = load %struct.t4_offload_policy*, %struct.t4_offload_policy** %5, align 8
  %52 = getelementptr inbounds %struct.t4_offload_policy, %struct.t4_offload_policy* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %50
  %57 = load i64, i64* @REALLOC_STRIDE, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %9, align 4
  %62 = load %struct.t4_offload_policy*, %struct.t4_offload_policy** %5, align 8
  %63 = getelementptr inbounds %struct.t4_offload_policy, %struct.t4_offload_policy* %62, i32 0, i32 1
  %64 = load %struct.offload_rule*, %struct.offload_rule** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call %struct.offload_rule* @realloc(%struct.offload_rule* %64, i32 %68)
  store %struct.offload_rule* %69, %struct.offload_rule** %13, align 8
  %70 = load %struct.offload_rule*, %struct.offload_rule** %13, align 8
  %71 = icmp eq %struct.offload_rule* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %56
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @ENOMEM, align 4
  store i32 %75, i32* %10, align 4
  br label %127

76:                                               ; preds = %56
  %77 = load %struct.offload_rule*, %struct.offload_rule** %13, align 8
  %78 = load %struct.t4_offload_policy*, %struct.t4_offload_policy** %5, align 8
  %79 = getelementptr inbounds %struct.t4_offload_policy, %struct.t4_offload_policy* %78, i32 0, i32 1
  store %struct.offload_rule* %77, %struct.offload_rule** %79, align 8
  br label %80

80:                                               ; preds = %76, %50
  %81 = load %struct.t4_offload_policy*, %struct.t4_offload_policy** %5, align 8
  %82 = getelementptr inbounds %struct.t4_offload_policy, %struct.t4_offload_policy* %81, i32 0, i32 1
  %83 = load %struct.offload_rule*, %struct.offload_rule** %82, align 8
  %84 = load %struct.t4_offload_policy*, %struct.t4_offload_policy** %5, align 8
  %85 = getelementptr inbounds %struct.t4_offload_policy, %struct.t4_offload_policy* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.offload_rule, %struct.offload_rule* %83, i64 %87
  store %struct.offload_rule* %88, %struct.offload_rule** %13, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = load %struct.offload_rule*, %struct.offload_rule** %13, align 8
  %94 = call i32 @parse_offload_policy_line(i32 %89, i8* %90, i64 %91, i32* %92, %struct.offload_rule* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %80
  %98 = load i32, i32* %8, align 4
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %98, i8* %99)
  br label %127

101:                                              ; preds = %80
  %102 = load %struct.t4_offload_policy*, %struct.t4_offload_policy** %5, align 8
  %103 = getelementptr inbounds %struct.t4_offload_policy, %struct.t4_offload_policy* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  br label %38

106:                                              ; preds = %38
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 @free(i8* %107)
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @feof(i32* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %106
  %113 = load i8*, i8** %4, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %113, i32 %114)
  %116 = load i32, i32* @errno, align 4
  store i32 %116, i32* %10, align 4
  br label %127

117:                                              ; preds = %106
  %118 = load %struct.t4_offload_policy*, %struct.t4_offload_policy** %5, align 8
  %119 = getelementptr inbounds %struct.t4_offload_policy, %struct.t4_offload_policy* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i8*, i8** %4, align 8
  %124 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %123)
  %125 = load i32, i32* @EINVAL, align 4
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %122, %117
  br label %127

127:                                              ; preds = %126, %112, %97, %72
  %128 = load i32*, i32** %14, align 8
  %129 = call i32 @pcap_close(i32* %128)
  %130 = load i32*, i32** %6, align 8
  %131 = call i32 @fclose(i32* %130)
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load %struct.t4_offload_policy*, %struct.t4_offload_policy** %5, align 8
  %136 = call i32 @free_offload_policy(%struct.t4_offload_policy* %135)
  br label %137

137:                                              ; preds = %134, %127
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %137, %28, %19
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*, ...) #1

declare dso_local i32* @pcap_open_dead(i32, i32) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @isempty_line(i8*, i64) #1

declare dso_local %struct.offload_rule* @realloc(%struct.offload_rule*, i32) #1

declare dso_local i32 @parse_offload_policy_line(i32, i8*, i64, i32*, %struct.offload_rule*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @pcap_close(i32*) #1

declare dso_local i32 @free_offload_policy(%struct.t4_offload_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
