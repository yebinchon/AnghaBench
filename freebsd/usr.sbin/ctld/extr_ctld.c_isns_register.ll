; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_isns_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_isns_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isns = type { %struct.conf* }
%struct.conf = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isns_register(%struct.isns* %0, %struct.isns* %1) #0 {
  %3 = alloca %struct.isns*, align 8
  %4 = alloca %struct.isns*, align 8
  %5 = alloca %struct.conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  store %struct.isns* %0, %struct.isns** %3, align 8
  store %struct.isns* %1, %struct.isns** %4, align 8
  %8 = load %struct.isns*, %struct.isns** %3, align 8
  %9 = getelementptr inbounds %struct.isns, %struct.isns* %8, i32 0, i32 0
  %10 = load %struct.conf*, %struct.conf** %9, align 8
  store %struct.conf* %10, %struct.conf** %5, align 8
  %11 = load %struct.conf*, %struct.conf** %5, align 8
  %12 = getelementptr inbounds %struct.conf, %struct.conf* %11, i32 0, i32 0
  %13 = call i64 @TAILQ_EMPTY(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.conf*, %struct.conf** %5, align 8
  %17 = getelementptr inbounds %struct.conf, %struct.conf* %16, i32 0, i32 2
  %18 = call i64 @TAILQ_EMPTY(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %2
  br label %58

21:                                               ; preds = %15
  %22 = load %struct.conf*, %struct.conf** %5, align 8
  %23 = getelementptr inbounds %struct.conf, %struct.conf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @set_timeout(i32 %24, i32 0)
  %26 = load %struct.isns*, %struct.isns** %3, align 8
  %27 = call i32 @isns_do_connect(%struct.isns* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call i32 @set_timeout(i32 0, i32 0)
  br label %58

32:                                               ; preds = %21
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %34 = call i32 @gethostname(i8* %33, i32 256)
  %35 = load %struct.isns*, %struct.isns** %4, align 8
  %36 = icmp eq %struct.isns* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = load %struct.isns*, %struct.isns** %4, align 8
  %39 = getelementptr inbounds %struct.isns, %struct.isns* %38, i32 0, i32 0
  %40 = load %struct.conf*, %struct.conf** %39, align 8
  %41 = getelementptr inbounds %struct.conf, %struct.conf* %40, i32 0, i32 0
  %42 = call i64 @TAILQ_EMPTY(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37, %32
  %45 = load %struct.isns*, %struct.isns** %3, align 8
  store %struct.isns* %45, %struct.isns** %4, align 8
  br label %46

46:                                               ; preds = %44, %37
  %47 = load %struct.isns*, %struct.isns** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %50 = call i32 @isns_do_deregister(%struct.isns* %47, i32 %48, i8* %49)
  %51 = load %struct.isns*, %struct.isns** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %54 = call i32 @isns_do_register(%struct.isns* %51, i32 %52, i8* %53)
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @close(i32 %55)
  %57 = call i32 @set_timeout(i32 0, i32 0)
  br label %58

58:                                               ; preds = %46, %30, %20
  ret void
}

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @set_timeout(i32, i32) #1

declare dso_local i32 @isns_do_connect(%struct.isns*) #1

declare dso_local i32 @gethostname(i8*, i32) #1

declare dso_local i32 @isns_do_deregister(%struct.isns*, i32, i8*) #1

declare dso_local i32 @isns_do_register(%struct.isns*, i32, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
