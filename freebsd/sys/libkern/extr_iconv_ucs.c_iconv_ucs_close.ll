; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_ucs.c_iconv_ucs_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_ucs.c_iconv_ucs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iconv_ucs = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.kobj = type { i32 }

@KICONV_UCS_FROM_UTF8 = common dso_local global i32 0, align 4
@KICONV_UCS_FROM_LE = common dso_local global i32 0, align 4
@KICONV_UCS_TO_UTF8 = common dso_local global i32 0, align 4
@KICONV_UCS_TO_LE = common dso_local global i32 0, align 4
@M_ICONV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @iconv_ucs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iconv_ucs_close(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iconv_ucs*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.iconv_ucs*
  store %struct.iconv_ucs* %5, %struct.iconv_ucs** %3, align 8
  %6 = load %struct.iconv_ucs*, %struct.iconv_ucs** %3, align 8
  %7 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.iconv_ucs*, %struct.iconv_ucs** %3, align 8
  %12 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @iconv_close(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.iconv_ucs*, %struct.iconv_ucs** %3, align 8
  %17 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.iconv_ucs*, %struct.iconv_ucs** %3, align 8
  %22 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @iconv_close(i64 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.iconv_ucs*, %struct.iconv_ucs** %3, align 8
  %27 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.iconv_ucs*, %struct.iconv_ucs** %3, align 8
  %32 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @iconv_close(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.iconv_ucs*, %struct.iconv_ucs** %3, align 8
  %37 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.iconv_ucs*, %struct.iconv_ucs** %3, align 8
  %42 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  br label %64

47:                                               ; preds = %35
  %48 = load %struct.iconv_ucs*, %struct.iconv_ucs** %3, align 8
  %49 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @KICONV_UCS_FROM_UTF8, align 4
  %52 = load i32, i32* @KICONV_UCS_FROM_LE, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load %struct.iconv_ucs*, %struct.iconv_ucs** %3, align 8
  %58 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %56, %47
  br label %64

64:                                               ; preds = %63, %40
  %65 = load %struct.iconv_ucs*, %struct.iconv_ucs** %3, align 8
  %66 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @KICONV_UCS_TO_UTF8, align 4
  %69 = load i32, i32* @KICONV_UCS_TO_LE, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load %struct.iconv_ucs*, %struct.iconv_ucs** %3, align 8
  %75 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %73, %64
  %81 = load i8*, i8** %2, align 8
  %82 = bitcast i8* %81 to %struct.kobj*
  %83 = load i32, i32* @M_ICONV, align 4
  %84 = call i32 @kobj_delete(%struct.kobj* %82, i32 %83)
  ret i32 0
}

declare dso_local i32 @iconv_close(i64) #1

declare dso_local i32 @kobj_delete(%struct.kobj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
