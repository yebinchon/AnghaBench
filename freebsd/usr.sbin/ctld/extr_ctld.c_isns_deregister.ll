; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_isns_deregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_isns_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isns = type { %struct.conf* }
%struct.conf = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isns_deregister(%struct.isns* %0) #0 {
  %2 = alloca %struct.isns*, align 8
  %3 = alloca %struct.conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  store %struct.isns* %0, %struct.isns** %2, align 8
  %6 = load %struct.isns*, %struct.isns** %2, align 8
  %7 = getelementptr inbounds %struct.isns, %struct.isns* %6, i32 0, i32 0
  %8 = load %struct.conf*, %struct.conf** %7, align 8
  store %struct.conf* %8, %struct.conf** %3, align 8
  %9 = load %struct.conf*, %struct.conf** %3, align 8
  %10 = getelementptr inbounds %struct.conf, %struct.conf* %9, i32 0, i32 2
  %11 = call i64 @TAILQ_EMPTY(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.conf*, %struct.conf** %3, align 8
  %15 = getelementptr inbounds %struct.conf, %struct.conf* %14, i32 0, i32 1
  %16 = call i64 @TAILQ_EMPTY(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %1
  br label %39

19:                                               ; preds = %13
  %20 = load %struct.conf*, %struct.conf** %3, align 8
  %21 = getelementptr inbounds %struct.conf, %struct.conf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @set_timeout(i32 %22, i32 0)
  %24 = load %struct.isns*, %struct.isns** %2, align 8
  %25 = call i32 @isns_do_connect(%struct.isns* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %39

29:                                               ; preds = %19
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %31 = call i32 @gethostname(i8* %30, i32 256)
  %32 = load %struct.isns*, %struct.isns** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %35 = call i32 @isns_do_deregister(%struct.isns* %32, i32 %33, i8* %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @close(i32 %36)
  %38 = call i32 @set_timeout(i32 0, i32 0)
  br label %39

39:                                               ; preds = %29, %28, %18
  ret void
}

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @set_timeout(i32, i32) #1

declare dso_local i32 @isns_do_connect(%struct.isns*) #1

declare dso_local i32 @gethostname(i8*, i32) #1

declare dso_local i32 @isns_do_deregister(%struct.isns*, i32, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
