; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_heap.c_dn_ht_scan_bucket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_heap.c_dn_ht_scan_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_ht = type { i32, i8**, i32, i32 }

@DNHT_SCAN_DEL = common dso_local global i32 0, align 4
@DNHT_SCAN_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_ht_scan_bucket(%struct.dn_ht* %0, i32* %1, i32 (i8*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dn_ht*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32 (i8*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.dn_ht* %0, %struct.dn_ht** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 (i8*, i8*)* %2, i32 (i8*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %17 = icmp eq %struct.dn_ht* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %20 = icmp eq i32 (i8*, i8*)* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %4
  store i32 0, i32* %5, align 4
  br label %88

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %26 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32*, i32** %7, align 8
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %22
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %35 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %34, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  store i8** %39, i8*** %13, align 8
  br label %40

40:                                               ; preds = %85, %31
  %41 = load i8**, i8*** %13, align 8
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %14, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %86

44:                                               ; preds = %40
  %45 = load i8*, i8** %14, align 8
  %46 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %47 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = bitcast i8* %50 to i8**
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %15, align 8
  %53 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 %53(i8* %54, i8* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @DNHT_SCAN_DEL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %44
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  %64 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %65 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 4
  %68 = load i8*, i8** %15, align 8
  %69 = load i8**, i8*** %13, align 8
  store i8* %68, i8** %69, align 8
  br label %78

70:                                               ; preds = %44
  %71 = load i8*, i8** %14, align 8
  %72 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %73 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %71, i64 %75
  %77 = bitcast i8* %76 to i8**
  store i8** %77, i8*** %13, align 8
  br label %78

78:                                               ; preds = %70, %61
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @DNHT_SCAN_END, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %5, align 4
  br label %88

85:                                               ; preds = %78
  br label %40

86:                                               ; preds = %40
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %83, %21
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
