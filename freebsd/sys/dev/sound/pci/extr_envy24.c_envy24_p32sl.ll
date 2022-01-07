; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_p32sl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_p32sl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i32, i32, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@ENVY24_PLAY_CHNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_chinfo*)* @envy24_p32sl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envy24_p32sl(%struct.sc_chinfo* %0) #0 {
  %2 = alloca %struct.sc_chinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sc_chinfo* %0, %struct.sc_chinfo** %2, align 8
  %12 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %13 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sndbuf_getready(i32 %14)
  %16 = sdiv i32 %15, 8
  store i32 %16, i32* %3, align 4
  %17 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %18 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %17, i32 0, i32 5
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %4, align 8
  %22 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %23 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8**
  store i8** %25, i8*** %5, align 8
  %26 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %27 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sndbuf_getreadyptr(i32 %28)
  %30 = sdiv i32 %29, 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sdiv i32 %31, 2
  %33 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %34 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %38 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 4
  store i32 %40, i32* %8, align 4
  %41 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %42 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 8
  store i32 %44, i32* %9, align 4
  %45 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %46 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %47, 2
  store i32 %48, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %94, %1
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %97

53:                                               ; preds = %49
  %54 = load i8**, i8*** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @ENVY24_PLAY_CHNUM, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i8* %58, i8** %67, align 8
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @ENVY24_PLAY_CHNUM, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %77, %78
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i8* %73, i8** %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %7, align 4
  %88 = srem i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 2
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %6, align 4
  %93 = srem i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %53
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %49

97:                                               ; preds = %49
  ret void
}

declare dso_local i32 @sndbuf_getready(i32) #1

declare dso_local i32 @sndbuf_getreadyptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
