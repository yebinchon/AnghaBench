; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kevent_copyout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kevent_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32 }
%struct.kevent_args = type { i32 }

@KQ_NEVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"count (%d) > KQ_NEVENTS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kevent*, i32)* @kevent_copyout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kevent_copyout(i8* %0, %struct.kevent* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kevent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kevent_args*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.kevent* %1, %struct.kevent** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @KQ_NEVENTS, align 4
  %11 = icmp sle i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @KASSERT(i32 %12, i8* %15)
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.kevent_args*
  store %struct.kevent_args* %18, %struct.kevent_args** %7, align 8
  %19 = load %struct.kevent*, %struct.kevent** %5, align 8
  %20 = load %struct.kevent_args*, %struct.kevent_args** %7, align 8
  %21 = getelementptr inbounds %struct.kevent_args, %struct.kevent_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i32 @copyout(%struct.kevent* %19, i32 %22, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.kevent_args*, %struct.kevent_args** %7, align 8
  %33 = getelementptr inbounds %struct.kevent_args, %struct.kevent_args* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %3
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @copyout(%struct.kevent*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
