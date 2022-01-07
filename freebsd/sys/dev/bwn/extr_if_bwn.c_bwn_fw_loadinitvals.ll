; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_fw_loadinitvals.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_fw_loadinitvals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_fw }
%struct.bwn_fw = type { %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.bwn_fwhdr = type { i32 }
%struct.bwn_fwinitvals = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*)* @bwn_fw_loadinitvals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_fw_loadinitvals(%struct.bwn_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bwn_fwhdr*, align 8
  %6 = alloca %struct.bwn_fw*, align 8
  %7 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i64 4, i64* %4, align 8
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %9 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %8, i32 0, i32 0
  store %struct.bwn_fw* %9, %struct.bwn_fw** %6, align 8
  %10 = load %struct.bwn_fw*, %struct.bwn_fw** %6, align 8
  %11 = getelementptr inbounds %struct.bwn_fw, %struct.bwn_fw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.bwn_fwhdr*
  store %struct.bwn_fwhdr* %16, %struct.bwn_fwhdr** %5, align 8
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %18 = load %struct.bwn_fw*, %struct.bwn_fw** %6, align 8
  %19 = getelementptr inbounds %struct.bwn_fw, %struct.bwn_fw* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = getelementptr inbounds i8, i8* %24, i64 4
  %26 = bitcast i8* %25 to %struct.bwn_fwinitvals*
  %27 = ptrtoint %struct.bwn_fwinitvals* %26 to i32
  %28 = load %struct.bwn_fwhdr*, %struct.bwn_fwhdr** %5, align 8
  %29 = getelementptr inbounds %struct.bwn_fwhdr, %struct.bwn_fwhdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be32toh(i32 %30)
  %32 = load %struct.bwn_fw*, %struct.bwn_fw** %6, align 8
  %33 = getelementptr inbounds %struct.bwn_fw, %struct.bwn_fw* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %37, 4
  %39 = call i32 @bwn_fwinitvals_write(%struct.bwn_mac* %17, i32 %27, i32 %31, i64 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %83

44:                                               ; preds = %1
  %45 = load %struct.bwn_fw*, %struct.bwn_fw** %6, align 8
  %46 = getelementptr inbounds %struct.bwn_fw, %struct.bwn_fw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = icmp ne %struct.TYPE_3__* %48, null
  br i1 %49, label %50, label %81

50:                                               ; preds = %44
  %51 = load %struct.bwn_fw*, %struct.bwn_fw** %6, align 8
  %52 = getelementptr inbounds %struct.bwn_fw, %struct.bwn_fw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.bwn_fwhdr*
  store %struct.bwn_fwhdr* %57, %struct.bwn_fwhdr** %5, align 8
  %58 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %59 = load %struct.bwn_fw*, %struct.bwn_fw** %6, align 8
  %60 = getelementptr inbounds %struct.bwn_fw, %struct.bwn_fw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  %67 = bitcast i8* %66 to %struct.bwn_fwinitvals*
  %68 = ptrtoint %struct.bwn_fwinitvals* %67 to i32
  %69 = load %struct.bwn_fwhdr*, %struct.bwn_fwhdr** %5, align 8
  %70 = getelementptr inbounds %struct.bwn_fwhdr, %struct.bwn_fwhdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @be32toh(i32 %71)
  %73 = load %struct.bwn_fw*, %struct.bwn_fw** %6, align 8
  %74 = getelementptr inbounds %struct.bwn_fw, %struct.bwn_fw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %78, 4
  %80 = call i32 @bwn_fwinitvals_write(%struct.bwn_mac* %58, i32 %68, i32 %72, i64 %79)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %50, %44
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %42
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @bwn_fwinitvals_write(%struct.bwn_mac*, i32, i32, i64) #1

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
