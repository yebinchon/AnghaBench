; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_at_async_csq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_at_async_csq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"+CSQ: %d,%*d\00", align 1
@timers = common dso_local global i32 0, align 4
@tmr_status = common dso_local global i32 0, align 4
@FLG_NEWDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @at_async_csq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at_async_csq(i8* %0, i8* %1) #0 {
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
  %11 = call i32 @sscanf(i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %36

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 99
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.ctx*, %struct.ctx** %5, align 8
  %20 = getelementptr inbounds %struct.ctx, %struct.ctx* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  br label %30

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %22, 2
  %24 = sub nsw i32 %23, 113
  %25 = load %struct.ctx*, %struct.ctx** %5, align 8
  %26 = getelementptr inbounds %struct.ctx, %struct.ctx* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @tmr_status, align 4
  %28 = load %struct.ctx*, %struct.ctx** %5, align 8
  %29 = call i32 @tmr_add(i32* @timers, i32 1, i32 15, i32 %27, %struct.ctx* %28)
  br label %30

30:                                               ; preds = %21, %18
  %31 = load i32, i32* @FLG_NEWDATA, align 4
  %32 = load %struct.ctx*, %struct.ctx** %5, align 8
  %33 = getelementptr inbounds %struct.ctx, %struct.ctx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %14
  ret void
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @tmr_add(i32*, i32, i32, i32, %struct.ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
