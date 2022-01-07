; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_buildsgdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_buildsgdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_chinfo = type { i32, i32, i64, %struct.TYPE_2__*, i32, %struct.atiixp_info* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.atiixp_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atiixp_chinfo*)* @atiixp_buildsgdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atiixp_buildsgdt(%struct.atiixp_chinfo* %0) #0 {
  %2 = alloca %struct.atiixp_chinfo*, align 8
  %3 = alloca %struct.atiixp_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.atiixp_chinfo* %0, %struct.atiixp_chinfo** %2, align 8
  %8 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %2, align 8
  %9 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %8, i32 0, i32 5
  %10 = load %struct.atiixp_info*, %struct.atiixp_info** %9, align 8
  store %struct.atiixp_info* %10, %struct.atiixp_info** %3, align 8
  %11 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %2, align 8
  %12 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @sndbuf_getbufaddr(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %16 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %2, align 8
  %21 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %2, align 8
  %24 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  store i32 %26, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %34

27:                                               ; preds = %1
  %28 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %2, align 8
  %29 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %5, align 4
  %31 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %2, align 8
  %32 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %27, %19
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %92, %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %95

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 %41, %42
  %44 = add nsw i32 %40, %43
  %45 = call i8* @htole32(i32 %44)
  %46 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %2, align 8
  %47 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store i8* %45, i8** %52, align 8
  %53 = call i8* @htole16(i32 0)
  %54 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %2, align 8
  %55 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i8* %53, i8** %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = ashr i32 %61, 2
  %63 = call i8* @htole16(i32 %62)
  %64 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %2, align 8
  %65 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i8* %63, i8** %70, align 8
  %71 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %2, align 8
  %72 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* %6, align 4
  %79 = srem i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = add i64 %75, %81
  %83 = trunc i64 %82 to i32
  %84 = call i8* @htole32(i32 %83)
  %85 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %2, align 8
  %86 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i8* %84, i8** %91, align 8
  br label %92

92:                                               ; preds = %39
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %35

95:                                               ; preds = %35
  ret void
}

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i8* @htole16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
