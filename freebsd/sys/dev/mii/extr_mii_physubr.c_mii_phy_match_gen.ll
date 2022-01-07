; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii_physubr.c_mii_phy_match_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii_physubr.c_mii_phy_match_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_attach_args = type { i32, i32 }
%struct.mii_phydesc = type { i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mii_phydesc* @mii_phy_match_gen(%struct.mii_attach_args* %0, %struct.mii_phydesc* %1, i64 %2) #0 {
  %4 = alloca %struct.mii_phydesc*, align 8
  %5 = alloca %struct.mii_attach_args*, align 8
  %6 = alloca %struct.mii_phydesc*, align 8
  %7 = alloca i64, align 8
  store %struct.mii_attach_args* %0, %struct.mii_attach_args** %5, align 8
  store %struct.mii_phydesc* %1, %struct.mii_phydesc** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %8

8:                                                ; preds = %37, %3
  %9 = load %struct.mii_phydesc*, %struct.mii_phydesc** %6, align 8
  %10 = getelementptr inbounds %struct.mii_phydesc, %struct.mii_phydesc* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %8
  %14 = load %struct.mii_attach_args*, %struct.mii_attach_args** %5, align 8
  %15 = getelementptr inbounds %struct.mii_attach_args, %struct.mii_attach_args* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mii_attach_args*, %struct.mii_attach_args** %5, align 8
  %18 = getelementptr inbounds %struct.mii_attach_args, %struct.mii_attach_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @MII_OUI(i32 %16, i32 %19)
  %21 = load %struct.mii_phydesc*, %struct.mii_phydesc** %6, align 8
  %22 = getelementptr inbounds %struct.mii_phydesc, %struct.mii_phydesc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %13
  %26 = load %struct.mii_attach_args*, %struct.mii_attach_args** %5, align 8
  %27 = getelementptr inbounds %struct.mii_attach_args, %struct.mii_attach_args* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @MII_MODEL(i32 %28)
  %30 = load %struct.mii_phydesc*, %struct.mii_phydesc** %6, align 8
  %31 = getelementptr inbounds %struct.mii_phydesc, %struct.mii_phydesc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load %struct.mii_phydesc*, %struct.mii_phydesc** %6, align 8
  store %struct.mii_phydesc* %35, %struct.mii_phydesc** %4, align 8
  br label %44

36:                                               ; preds = %25, %13
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.mii_phydesc*, %struct.mii_phydesc** %6, align 8
  %39 = bitcast %struct.mii_phydesc* %38 to i8*
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = bitcast i8* %41 to %struct.mii_phydesc*
  store %struct.mii_phydesc* %42, %struct.mii_phydesc** %6, align 8
  br label %8

43:                                               ; preds = %8
  store %struct.mii_phydesc* null, %struct.mii_phydesc** %4, align 8
  br label %44

44:                                               ; preds = %43, %34
  %45 = load %struct.mii_phydesc*, %struct.mii_phydesc** %4, align 8
  ret %struct.mii_phydesc* %45
}

declare dso_local i64 @MII_OUI(i32, i32) #1

declare dso_local i64 @MII_MODEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
