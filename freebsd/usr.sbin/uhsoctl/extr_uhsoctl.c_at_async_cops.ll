; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_at_async_cops.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_at_async_cops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"+COPS: %*d,%*d,\22%[^\22]\22,%d\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s to \22%s\22 (%s)\00", align 1
@network_reg_status = common dso_local global i32* null, align 8
@network_access_type = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"AT_OWANCALL=%d,1,1\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @at_async_cops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at_async_cops(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ctx*
  store %struct.ctx* %10, %struct.ctx** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %13 = call i32 @sscanf(i8* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %12, i32* %7)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %109

17:                                               ; preds = %2
  %18 = load %struct.ctx*, %struct.ctx** %5, align 8
  %19 = getelementptr inbounds %struct.ctx, %struct.ctx* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load %struct.ctx*, %struct.ctx** %5, align 8
  %24 = getelementptr inbounds %struct.ctx, %struct.ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %30 = load %struct.ctx*, %struct.ctx** %5, align 8
  %31 = getelementptr inbounds %struct.ctx, %struct.ctx* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @strcasecmp(i8* %29, i32* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %109

36:                                               ; preds = %28, %22
  %37 = load %struct.ctx*, %struct.ctx** %5, align 8
  %38 = getelementptr inbounds %struct.ctx, %struct.ctx* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @free(i32* %39)
  br label %41

41:                                               ; preds = %36, %17
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %43 = call i32* @strdup(i8* %42)
  %44 = load %struct.ctx*, %struct.ctx** %5, align 8
  %45 = getelementptr inbounds %struct.ctx, %struct.ctx* %44, i32 0, i32 5
  store i32* %43, i32** %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.ctx*, %struct.ctx** %5, align 8
  %48 = getelementptr inbounds %struct.ctx, %struct.ctx* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ctx*, %struct.ctx** %5, align 8
  %50 = getelementptr inbounds %struct.ctx, %struct.ctx* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %58, label %53

53:                                               ; preds = %41
  %54 = load %struct.ctx*, %struct.ctx** %5, align 8
  %55 = getelementptr inbounds %struct.ctx, %struct.ctx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 5
  br i1 %57, label %58, label %92

58:                                               ; preds = %53, %41
  %59 = load i32, i32* @LOG_NOTICE, align 4
  %60 = load i32*, i32** @network_reg_status, align 8
  %61 = load %struct.ctx*, %struct.ctx** %5, align 8
  %62 = getelementptr inbounds %struct.ctx, %struct.ctx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ctx*, %struct.ctx** %5, align 8
  %68 = getelementptr inbounds %struct.ctx, %struct.ctx* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = ptrtoint i32* %69 to i32
  %71 = load i32*, i32** @network_access_type, align 8
  %72 = load %struct.ctx*, %struct.ctx** %5, align 8
  %73 = getelementptr inbounds %struct.ctx, %struct.ctx* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, i32, i32, ...) @logger(i32 %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %70, i32 %77)
  %79 = load %struct.ctx*, %struct.ctx** %5, align 8
  %80 = getelementptr inbounds %struct.ctx, %struct.ctx* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %83, label %91

83:                                               ; preds = %58
  %84 = load %struct.ctx*, %struct.ctx** %5, align 8
  %85 = getelementptr inbounds %struct.ctx, %struct.ctx* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ctx*, %struct.ctx** %5, align 8
  %88 = getelementptr inbounds %struct.ctx, %struct.ctx* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @at_cmd_async(i32 %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %83, %58
  br label %109

92:                                               ; preds = %53
  %93 = load i32, i32* @LOG_NOTICE, align 4
  %94 = load i32*, i32** @network_reg_status, align 8
  %95 = load %struct.ctx*, %struct.ctx** %5, align 8
  %96 = getelementptr inbounds %struct.ctx, %struct.ctx* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** @network_access_type, align 8
  %102 = load %struct.ctx*, %struct.ctx** %5, align 8
  %103 = getelementptr inbounds %struct.ctx, %struct.ctx* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i8*, i32, i32, ...) @logger(i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %100, i32 %107)
  br label %109

109:                                              ; preds = %16, %35, %92, %91
  ret void
}

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*) #1

declare dso_local i64 @strcasecmp(i8*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @logger(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @at_cmd_async(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
