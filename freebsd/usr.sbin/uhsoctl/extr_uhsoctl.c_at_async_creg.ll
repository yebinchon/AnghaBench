; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_at_async_creg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_at_async_creg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"+CREG: %*d,%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"+CREG: %d\00", align 1
@timers = common dso_local global i32 0, align 4
@tmr_creg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"AT+COPS?\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @at_async_creg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at_async_creg(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.ctx*
  store %struct.ctx* %9, %struct.ctx** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @sscanf(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %54

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.ctx*, %struct.ctx** %5, align 8
  %23 = getelementptr inbounds %struct.ctx, %struct.ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.ctx*, %struct.ctx** %5, align 8
  %28 = getelementptr inbounds %struct.ctx, %struct.ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 5
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @tmr_creg, align 4
  %33 = load %struct.ctx*, %struct.ctx** %5, align 8
  %34 = call i32 @tmr_add(i32* @timers, i32 1, i32 1, i32 %32, %struct.ctx* %33)
  br label %39

35:                                               ; preds = %26, %21
  %36 = load i32, i32* @tmr_creg, align 4
  %37 = load %struct.ctx*, %struct.ctx** %5, align 8
  %38 = call i32 @tmr_add(i32* @timers, i32 1, i32 30, i32 %36, %struct.ctx* %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.ctx*, %struct.ctx** %5, align 8
  %41 = getelementptr inbounds %struct.ctx, %struct.ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %54

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.ctx*, %struct.ctx** %5, align 8
  %49 = getelementptr inbounds %struct.ctx, %struct.ctx* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ctx*, %struct.ctx** %5, align 8
  %51 = getelementptr inbounds %struct.ctx, %struct.ctx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @at_cmd_async(i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %46, %45, %19
  ret void
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @tmr_add(i32*, i32, i32, i32, %struct.ctx*) #1

declare dso_local i32 @at_cmd_async(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
