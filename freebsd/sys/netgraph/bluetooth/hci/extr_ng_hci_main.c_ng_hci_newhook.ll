; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/hci/extr_ng_hci_main.c_ng_hci_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/hci/extr_ng_hci_main.c_ng_hci_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32*, i32* }

@NG_HCI_HOOK_DRV = common dso_local global i32 0, align 4
@NG_HCI_HOOK_ACL = common dso_local global i32 0, align 4
@NG_HCI_HOOK_SCO = common dso_local global i32 0, align 4
@NG_HCI_HOOK_RAW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*)* @ng_hci_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_hci_newhook(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32**, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @NG_NODE_PRIVATE(i32 %10)
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %8, align 8
  store i32** null, i32*** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* @NG_HCI_HOOK_DRV, align 4
  %16 = call i64 @strcmp(i8* %14, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i32** %20, i32*** %9, align 8
  br label %50

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @NG_HCI_HOOK_ACL, align 4
  %24 = call i64 @strcmp(i8* %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32** %28, i32*** %9, align 8
  br label %49

29:                                               ; preds = %21
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @NG_HCI_HOOK_SCO, align 4
  %32 = call i64 @strcmp(i8* %30, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32** %36, i32*** %9, align 8
  br label %48

37:                                               ; preds = %29
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @NG_HCI_HOOK_RAW, align 4
  %40 = call i64 @strcmp(i8* %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32** %44, i32*** %9, align 8
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %4, align 4
  br label %59

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %34
  br label %49

49:                                               ; preds = %48, %26
  br label %50

50:                                               ; preds = %49, %18
  %51 = load i32**, i32*** %9, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @EISCONN, align 4
  store i32 %55, i32* %4, align 4
  br label %59

56:                                               ; preds = %50
  %57 = load i32*, i32** %6, align 8
  %58 = load i32**, i32*** %9, align 8
  store i32* %57, i32** %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %54, %45
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
