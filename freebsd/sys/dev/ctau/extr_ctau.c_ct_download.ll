; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_download.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@BCR1_TMS = common dso_local global i8 0, align 1
@BCR1_TDI = common dso_local global i8 0, align 1
@BCR0_TCK = common dso_local global i8 0, align 1
@BSR2_LERR = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ct_download(i32 %0, i8* %1, i64 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = add nsw i64 %17, 7
  %19 = ashr i64 %18, 3
  store i64 %19, i64* %14, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @BSR3(i32 %20)
  %22 = call zeroext i8 @inb(i32 %21)
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %23

23:                                               ; preds = %121, %4
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %14, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %124

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %13, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = xor i32 %32, 32
  %34 = shl i32 %33, 1
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = ashr i32 %39, 7
  %41 = and i32 %40, 1
  %42 = or i32 %34, %41
  store i32 %42, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %43

43:                                               ; preds = %115, %27
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %44, 7
  br i1 %45, label %46, label %120

46:                                               ; preds = %43
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %120

51:                                               ; preds = %46
  store i8 0, i8* %10, align 1
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = ashr i32 %52, %53
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i8, i8* @BCR1_TMS, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* %10, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %61, %59
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %10, align 1
  br label %64

64:                                               ; preds = %57, %51
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = ashr i32 %65, %66
  %68 = and i32 %67, 2
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i8, i8* @BCR1_TDI, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* %10, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %74, %72
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %10, align 1
  br label %77

77:                                               ; preds = %70, %64
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @BCR1(i32 %78)
  %80 = load i8, i8* %10, align 1
  %81 = call i32 @outb(i32 %79, i8 zeroext %80)
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @BSR2(i32 %82)
  %84 = call zeroext i8 @inb(i32 %83)
  store i8 %84, i8* %11, align 1
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @BCR0(i32 %85)
  %87 = load i8, i8* @BCR0_TCK, align 1
  %88 = call i32 @outb(i32 %86, i8 zeroext %87)
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @BCR0(i32 %89)
  %91 = call i32 @outb(i32 %90, i8 zeroext 0)
  %92 = load i64, i64* %12, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sge i64 %92, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %77
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 1
  store %struct.TYPE_3__* %99, %struct.TYPE_3__** %9, align 8
  br label %100

100:                                              ; preds = %97, %77
  %101 = load i64, i64* %12, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp sge i64 %101, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = load i8, i8* %11, align 1
  %108 = zext i8 %107 to i32
  %109 = load i8, i8* @BSR2_LERR, align 1
  %110 = zext i8 %109 to i32
  %111 = and i32 %108, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 0, i32* %5, align 4
  br label %125

114:                                              ; preds = %106, %100
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, 2
  store i32 %117, i32* %16, align 4
  %118 = load i64, i64* %12, align 8
  %119 = add nsw i64 %118, 2
  store i64 %119, i64* %12, align 8
  br label %43

120:                                              ; preds = %50, %43
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %13, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %13, align 8
  br label %23

124:                                              ; preds = %23
  store i32 1, i32* %5, align 4
  br label %125

125:                                              ; preds = %124, %113
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @BSR3(i32) #1

declare dso_local i32 @outb(i32, i8 zeroext) #1

declare dso_local i32 @BCR1(i32) #1

declare dso_local i32 @BSR2(i32) #1

declare dso_local i32 @BCR0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
