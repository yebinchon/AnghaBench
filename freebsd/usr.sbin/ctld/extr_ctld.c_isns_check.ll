; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_isns_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_isns_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isns = type { %struct.conf* }
%struct.conf = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isns_check(%struct.isns* %0) #0 {
  %2 = alloca %struct.isns*, align 8
  %3 = alloca %struct.conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [256 x i8], align 16
  store %struct.isns* %0, %struct.isns** %2, align 8
  %7 = load %struct.isns*, %struct.isns** %2, align 8
  %8 = getelementptr inbounds %struct.isns, %struct.isns* %7, i32 0, i32 0
  %9 = load %struct.conf*, %struct.conf** %8, align 8
  store %struct.conf* %9, %struct.conf** %3, align 8
  %10 = load %struct.conf*, %struct.conf** %3, align 8
  %11 = getelementptr inbounds %struct.conf, %struct.conf* %10, i32 0, i32 2
  %12 = call i64 @TAILQ_EMPTY(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.conf*, %struct.conf** %3, align 8
  %16 = getelementptr inbounds %struct.conf, %struct.conf* %15, i32 0, i32 1
  %17 = call i64 @TAILQ_EMPTY(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %1
  br label %53

20:                                               ; preds = %14
  %21 = load %struct.conf*, %struct.conf** %3, align 8
  %22 = getelementptr inbounds %struct.conf, %struct.conf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @set_timeout(i32 %23, i32 0)
  %25 = load %struct.isns*, %struct.isns** %2, align 8
  %26 = call i32 @isns_do_connect(%struct.isns* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = call i32 @set_timeout(i32 0, i32 0)
  br label %53

31:                                               ; preds = %20
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %33 = call i32 @gethostname(i8* %32, i32 256)
  %34 = load %struct.isns*, %struct.isns** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %37 = call i32 @isns_do_check(%struct.isns* %34, i32 %35, i8* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load %struct.isns*, %struct.isns** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %44 = call i32 @isns_do_deregister(%struct.isns* %41, i32 %42, i8* %43)
  %45 = load %struct.isns*, %struct.isns** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %48 = call i32 @isns_do_register(%struct.isns* %45, i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %40, %31
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @close(i32 %50)
  %52 = call i32 @set_timeout(i32 0, i32 0)
  br label %53

53:                                               ; preds = %49, %29, %19
  ret void
}

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @set_timeout(i32, i32) #1

declare dso_local i32 @isns_do_connect(%struct.isns*) #1

declare dso_local i32 @gethostname(i8*, i32) #1

declare dso_local i32 @isns_do_check(%struct.isns*, i32, i8*) #1

declare dso_local i32 @isns_do_deregister(%struct.isns*, i32, i8*) #1

declare dso_local i32 @isns_do_register(%struct.isns*, i32, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
