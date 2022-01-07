; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/boot0cfg/extr_boot0cfg.c_write_mbr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/boot0cfg/extr_boot0cfg.c_write_mbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@O_WRONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s: short write\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"can't open file %s to write backup\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"error opening %s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"error getting providername for %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"PART\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"bootcode\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"skip_dsn\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"GEOM_PART: write bootcode to %s failed: %s\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"can't write MBR to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*, i32, i32)* @write_mbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_mbr(i8* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gctl_req*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @O_WRONLY, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %17, %18
  %20 = call i32 (i8*, i32, ...) @open(i8* %16, i32 %19, i32 438)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %37

23:                                               ; preds = %5
  %24 = load i32, i32* %15, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @write(i32 %24, i32* %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @close(i32 %28)
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %23
  br label %107

37:                                               ; preds = %5
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @err(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* @O_RDONLY, align 4
  %46 = call i32 (i8*, i32, ...) @open(i8* %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  br label %107

52:                                               ; preds = %43
  %53 = load i32, i32* %15, align 4
  %54 = call i8* @g_providername(i32 %53)
  store i8* %54, i8** %13, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %107

60:                                               ; preds = %52
  %61 = call i64 @geom_class_available(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %101

63:                                               ; preds = %60
  %64 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %64, %struct.gctl_req** %11, align 8
  %65 = load %struct.gctl_req*, %struct.gctl_req** %11, align 8
  %66 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %67 = load %struct.gctl_req*, %struct.gctl_req** %11, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 -1, i8* %68)
  %70 = load %struct.gctl_req*, %struct.gctl_req** %11, align 8
  %71 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %72 = load %struct.gctl_req*, %struct.gctl_req** %11, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %73, i32* %74)
  %76 = load %struct.gctl_req*, %struct.gctl_req** %11, align 8
  %77 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %63
  %81 = load %struct.gctl_req*, %struct.gctl_req** %11, align 8
  %82 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 4, i32* %10)
  br label %83

83:                                               ; preds = %80, %63
  %84 = load %struct.gctl_req*, %struct.gctl_req** %11, align 8
  %85 = call i8* @gctl_issue(%struct.gctl_req* %84)
  store i8* %85, i8** %12, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load i8*, i8** %12, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i8*, i8** %6, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i8* %95, i8* %96)
  br label %98

98:                                               ; preds = %94, %88, %83
  %99 = load %struct.gctl_req*, %struct.gctl_req** %11, align 8
  %100 = call i32 @gctl_free(%struct.gctl_req* %99)
  br label %104

101:                                              ; preds = %60
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 @free(i8* %105)
  br label %107

107:                                              ; preds = %104, %57, %49, %36
  ret void
}

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i8* @g_providername(i32) #1

declare dso_local i64 @geom_class_available(i8*) #1

declare dso_local %struct.gctl_req* @gctl_get_handle(...) #1

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, ...) #1

declare dso_local i8* @gctl_issue(%struct.gctl_req*) #1

declare dso_local i32 @gctl_free(%struct.gctl_req*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
