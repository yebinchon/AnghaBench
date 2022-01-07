; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vlan.c_vlan_clone_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vlan.c_vlan_clone_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clone = type { i32 }

@vlanname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, i8*)* @vlan_clone_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_clone_match(%struct.if_clone* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.if_clone*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.if_clone* %0, %struct.if_clone** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32* @vlan_clone_match_ethervid(i8* %7, i32* null)
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %43

11:                                               ; preds = %2
  %12 = load i32, i32* @vlanname, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @vlanname, align 4
  %15 = call i32 @strlen(i32 %14)
  %16 = call i64 @strncmp(i32 %12, i8* %13, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %43

19:                                               ; preds = %11
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 4
  store i8* %21, i8** %6, align 8
  br label %22

22:                                               ; preds = %39, %19
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp slt i32 %30, 48
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sgt i32 %35, 57
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %27
  store i32 0, i32* %3, align 4
  br label %43

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  br label %22

42:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %37, %18, %10
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32* @vlan_clone_match_ethervid(i8*, i32*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
