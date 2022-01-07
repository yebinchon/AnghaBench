; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_Write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdescriptor = type { i32 }
%struct.bundle = type { i32 }
%struct.datalink = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CLOSE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdescriptor*, %struct.bundle*, i32*)* @datalink_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @datalink_Write(%struct.fdescriptor* %0, %struct.bundle* %1, i32* %2) #0 {
  %4 = alloca %struct.fdescriptor*, align 8
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.datalink*, align 8
  %8 = alloca i32, align 4
  store %struct.fdescriptor* %0, %struct.fdescriptor** %4, align 8
  store %struct.bundle* %1, %struct.bundle** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.fdescriptor*, %struct.fdescriptor** %4, align 8
  %10 = call %struct.datalink* @descriptor2datalink(%struct.fdescriptor* %9)
  store %struct.datalink* %10, %struct.datalink** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.datalink*, %struct.datalink** %7, align 8
  %12 = getelementptr inbounds %struct.datalink, %struct.datalink* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %75 [
    i32 136, label %14
    i32 129, label %14
    i32 134, label %15
    i32 135, label %15
    i32 131, label %15
    i32 132, label %15
    i32 128, label %28
    i32 133, label %28
    i32 138, label %28
    i32 137, label %28
    i32 130, label %28
  ]

14:                                               ; preds = %3, %3
  br label %75

15:                                               ; preds = %3, %3, %3, %3
  %16 = load %struct.datalink*, %struct.datalink** %7, align 8
  %17 = getelementptr inbounds %struct.datalink, %struct.datalink* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.bundle*, %struct.bundle** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @descriptor_Write(i32* %18, %struct.bundle* %19, i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.datalink*, %struct.datalink** %7, align 8
  %25 = load i32, i32* @CLOSE_NORMAL, align 4
  %26 = call i32 @datalink_ComeDown(%struct.datalink* %24, i32 %25)
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %23, %15
  br label %75

28:                                               ; preds = %3, %3, %3, %3, %3
  %29 = load %struct.datalink*, %struct.datalink** %7, align 8
  %30 = getelementptr inbounds %struct.datalink, %struct.datalink* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @descriptor_IsSet(i32* %31, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load %struct.datalink*, %struct.datalink** %7, align 8
  %37 = getelementptr inbounds %struct.datalink, %struct.datalink* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.bundle*, %struct.bundle** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @descriptor_Write(i32* %38, %struct.bundle* %39, i32* %40)
  switch i32 %41, label %49 [
    i32 -1, label %42
    i32 1, label %46
  ]

42:                                               ; preds = %35
  %43 = load %struct.datalink*, %struct.datalink** %7, align 8
  %44 = load i32, i32* @CLOSE_NORMAL, align 4
  %45 = call i32 @datalink_ComeDown(%struct.datalink* %43, i32 %44)
  br label %49

46:                                               ; preds = %35
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %35, %42
  br label %50

50:                                               ; preds = %49, %28
  %51 = load %struct.datalink*, %struct.datalink** %7, align 8
  %52 = getelementptr inbounds %struct.datalink, %struct.datalink* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @descriptor_IsSet(i32* %54, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %50
  %59 = load %struct.datalink*, %struct.datalink** %7, align 8
  %60 = getelementptr inbounds %struct.datalink, %struct.datalink* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.bundle*, %struct.bundle** %5, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @descriptor_Write(i32* %62, %struct.bundle* %63, i32* %64)
  switch i32 %65, label %73 [
    i32 -1, label %66
    i32 1, label %70
  ]

66:                                               ; preds = %58
  %67 = load %struct.datalink*, %struct.datalink** %7, align 8
  %68 = load i32, i32* @CLOSE_NORMAL, align 4
  %69 = call i32 @datalink_ComeDown(%struct.datalink* %67, i32 %68)
  br label %73

70:                                               ; preds = %58
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %58, %66
  br label %74

74:                                               ; preds = %73, %50
  br label %75

75:                                               ; preds = %3, %74, %27, %14
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local %struct.datalink* @descriptor2datalink(%struct.fdescriptor*) #1

declare dso_local i32 @descriptor_Write(i32*, %struct.bundle*, i32*) #1

declare dso_local i32 @datalink_ComeDown(%struct.datalink*, i32) #1

declare dso_local i32 @descriptor_IsSet(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
