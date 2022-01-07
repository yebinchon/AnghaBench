; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_heap.c_dn_ht_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_heap.c_dn_ht_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_ht = type { i32, i8**, i32, i32 }

@DNHT_SCAN_DEL = common dso_local global i32 0, align 4
@DNHT_SCAN_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_ht_scan(%struct.dn_ht* %0, i32 (i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dn_ht*, align 8
  %6 = alloca i32 (i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.dn_ht* %0, %struct.dn_ht** %5, align 8
  store i32 (i8*, i8*)* %1, i32 (i8*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.dn_ht*, %struct.dn_ht** %5, align 8
  %15 = icmp eq %struct.dn_ht* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %6, align 8
  %18 = icmp eq i32 (i8*, i8*)* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %86

20:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %81, %20
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.dn_ht*, %struct.dn_ht** %5, align 8
  %24 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %22, %25
  br i1 %26, label %27, label %84

27:                                               ; preds = %21
  %28 = load %struct.dn_ht*, %struct.dn_ht** %5, align 8
  %29 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  store i8** %33, i8*** %11, align 8
  br label %34

34:                                               ; preds = %79, %27
  %35 = load i8**, i8*** %11, align 8
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %80

38:                                               ; preds = %34
  %39 = load i8*, i8** %12, align 8
  %40 = load %struct.dn_ht*, %struct.dn_ht** %5, align 8
  %41 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  %45 = bitcast i8* %44 to i8**
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %13, align 8
  %47 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %6, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 %47(i8* %48, i8* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @DNHT_SCAN_DEL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %38
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = load %struct.dn_ht*, %struct.dn_ht** %5, align 8
  %59 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  %62 = load i8*, i8** %13, align 8
  %63 = load i8**, i8*** %11, align 8
  store i8* %62, i8** %63, align 8
  br label %72

64:                                               ; preds = %38
  %65 = load i8*, i8** %12, align 8
  %66 = load %struct.dn_ht*, %struct.dn_ht** %5, align 8
  %67 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  %71 = bitcast i8* %70 to i8**
  store i8** %71, i8*** %11, align 8
  br label %72

72:                                               ; preds = %64, %55
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @DNHT_SCAN_END, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %86

79:                                               ; preds = %72
  br label %34

80:                                               ; preds = %34
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %21

84:                                               ; preds = %21
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %77, %19
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
