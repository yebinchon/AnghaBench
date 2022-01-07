; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore_dev.c_xs_queue_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore_dev.c_xs_queue_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xs_dev_data = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"xenstore reply too big\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xs_dev_data*, i8*, i32)* @xs_queue_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_queue_reply(%struct.xs_dev_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.xs_dev_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xs_dev_data* %0, %struct.xs_dev_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %26, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = load %struct.xs_dev_data*, %struct.xs_dev_data** %4, align 8
  %19 = getelementptr inbounds %struct.xs_dev_data, %struct.xs_dev_data* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.xs_dev_data*, %struct.xs_dev_data** %4, align 8
  %22 = getelementptr inbounds %struct.xs_dev_data, %struct.xs_dev_data* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @MASK_READ_IDX(i32 %23)
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  store i8 %17, i8* %25, align 1
  br label %26

26:                                               ; preds = %12
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = load %struct.xs_dev_data*, %struct.xs_dev_data** %4, align 8
  %30 = getelementptr inbounds %struct.xs_dev_data, %struct.xs_dev_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %8

33:                                               ; preds = %8
  %34 = load %struct.xs_dev_data*, %struct.xs_dev_data** %4, align 8
  %35 = getelementptr inbounds %struct.xs_dev_data, %struct.xs_dev_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.xs_dev_data*, %struct.xs_dev_data** %4, align 8
  %38 = getelementptr inbounds %struct.xs_dev_data, %struct.xs_dev_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = icmp ule i64 %41, 8
  %43 = zext i1 %42 to i32
  %44 = call i32 @KASSERT(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.xs_dev_data*, %struct.xs_dev_data** %4, align 8
  %46 = call i32 @wakeup(%struct.xs_dev_data* %45)
  %47 = load %struct.xs_dev_data*, %struct.xs_dev_data** %4, align 8
  %48 = getelementptr inbounds %struct.xs_dev_data, %struct.xs_dev_data* %47, i32 0, i32 1
  %49 = call i32 @selwakeup(i32* %48)
  ret void
}

declare dso_local i64 @MASK_READ_IDX(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @wakeup(%struct.xs_dev_data*) #1

declare dso_local i32 @selwakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
