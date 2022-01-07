; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vlan.c_vlan_clone_match_ethervid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vlan.c_vlan_clone_match_ethervid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ifnet* (i8*, i32*)* @vlan_clone_match_ethervid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ifnet* @vlan_clone_match_ethervid(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @IFNAMSIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @IFNAMSIZ, align 4
  %18 = call i32 @strlcpy(i8* %15, i8* %16, i32 %17)
  %19 = call i8* @strchr(i8* %15, i8 signext 46)
  store i8* %19, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store %struct.ifnet* null, %struct.ifnet** %3, align 8
  store i32 1, i32* %11, align 4
  br label %76

22:                                               ; preds = %2
  %23 = load i8*, i8** %8, align 8
  store i8 0, i8* %23, align 1
  %24 = call %struct.ifnet* @ifunit_ref(i8* %15)
  store %struct.ifnet* %24, %struct.ifnet** %9, align 8
  %25 = icmp eq %struct.ifnet* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store %struct.ifnet* null, %struct.ifnet** %3, align 8
  store i32 1, i32* %11, align 4
  br label %76

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %35 = call i32 @if_rele(%struct.ifnet* %34)
  store %struct.ifnet* null, %struct.ifnet** %3, align 8
  store i32 1, i32* %11, align 4
  br label %76

36:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %57, %36
  %38 = load i8*, i8** %8, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sge i32 %40, 48
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sle i32 %45, 57
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  br i1 %48, label %49, label %60

49:                                               ; preds = %47
  %50 = load i32, i32* %10, align 4
  %51 = mul nsw i32 %50, 10
  %52 = load i8*, i8** %8, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = sub nsw i32 %54, 48
  %56 = add nsw i32 %51, %55
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %49
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %8, align 8
  br label %37

60:                                               ; preds = %47
  %61 = load i8*, i8** %8, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %67 = call i32 @if_rele(%struct.ifnet* %66)
  store %struct.ifnet* null, %struct.ifnet** %3, align 8
  store i32 1, i32* %11, align 4
  br label %76

68:                                               ; preds = %60
  %69 = load i32*, i32** %5, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %75, %struct.ifnet** %3, align 8
  store i32 1, i32* %11, align 4
  br label %76

76:                                               ; preds = %74, %65, %33, %26, %21
  %77 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  ret %struct.ifnet* %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local %struct.ifnet* @ifunit_ref(i8*) #2

declare dso_local i32 @if_rele(%struct.ifnet*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
