; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_RenameDatalink.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_RenameDatalink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.datalink* }
%struct.datalink = type { i32, %struct.datalink* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bundle_RenameDatalink(%struct.bundle* %0, %struct.datalink* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca %struct.datalink*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.datalink*, align 8
  store %struct.bundle* %0, %struct.bundle** %5, align 8
  store %struct.datalink* %1, %struct.datalink** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.datalink*, %struct.datalink** %6, align 8
  %10 = getelementptr inbounds %struct.datalink, %struct.datalink* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @strcasecmp(i32 %11, i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %40

16:                                               ; preds = %3
  %17 = load %struct.bundle*, %struct.bundle** %5, align 8
  %18 = getelementptr inbounds %struct.bundle, %struct.bundle* %17, i32 0, i32 0
  %19 = load %struct.datalink*, %struct.datalink** %18, align 8
  store %struct.datalink* %19, %struct.datalink** %8, align 8
  br label %20

20:                                               ; preds = %32, %16
  %21 = load %struct.datalink*, %struct.datalink** %8, align 8
  %22 = icmp ne %struct.datalink* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load %struct.datalink*, %struct.datalink** %8, align 8
  %25 = getelementptr inbounds %struct.datalink, %struct.datalink* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @strcasecmp(i32 %26, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %40

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.datalink*, %struct.datalink** %8, align 8
  %34 = getelementptr inbounds %struct.datalink, %struct.datalink* %33, i32 0, i32 1
  %35 = load %struct.datalink*, %struct.datalink** %34, align 8
  store %struct.datalink* %35, %struct.datalink** %8, align 8
  br label %20

36:                                               ; preds = %20
  %37 = load %struct.datalink*, %struct.datalink** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @datalink_Rename(%struct.datalink* %37, i8* %38)
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %30, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @datalink_Rename(%struct.datalink*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
