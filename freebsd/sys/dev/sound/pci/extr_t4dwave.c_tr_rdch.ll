; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_tr_rdch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_tr_rdch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_chinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.tr_info* }
%struct.tr_info = type { i32, i32 }

@TR_REG_CHNBASE = common dso_local global i64 0, align 8
@ALI_MAXADDR = common dso_local global i32 0, align 4
@TR_MAXADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tr_chinfo*)* @tr_rdch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_rdch(%struct.tr_chinfo* %0) #0 {
  %2 = alloca %struct.tr_chinfo*, align 8
  %3 = alloca %struct.tr_info*, align 8
  %4 = alloca [5 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.tr_chinfo* %0, %struct.tr_chinfo** %2, align 8
  %6 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %7 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %6, i32 0, i32 14
  %8 = load %struct.tr_info*, %struct.tr_info** %7, align 8
  store %struct.tr_info* %8, %struct.tr_info** %3, align 8
  %9 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %10 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @snd_mtxlock(i32 %11)
  %13 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %14 = call i32 @tr_selch(%struct.tr_chinfo* %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %29, %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 5
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %20 = load i64, i64* @TR_REG_CHNBASE, align 8
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i32 @tr_rd(%struct.tr_info* %19, i64 %24, i32 4)
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %27
  store i32 %25, i32* %28, align 4
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %15

32:                                               ; preds = %15
  %33 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %34 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snd_mtxunlock(i32 %35)
  %37 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %38 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 131
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ALI_MAXADDR, align 4
  %45 = and i32 %43, %44
  %46 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %47 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %55

48:                                               ; preds = %32
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TR_MAXADDR, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %54 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %48, %41
  %56 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 49152
  %59 = ashr i32 %58, 14
  %60 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %61 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 16256
  %65 = ashr i32 %64, 7
  %66 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %67 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 127
  %71 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %72 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 4
  %74 = load i32, i32* %73, align 16
  %75 = and i32 %74, -2147483648
  %76 = lshr i32 %75, 31
  %77 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %78 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 4
  %80 = load i32, i32* %79, align 16
  %81 = and i32 %80, 2130706432
  %82 = ashr i32 %81, 24
  %83 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %84 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 4
  %86 = load i32, i32* %85, align 16
  %87 = and i32 %86, 16711680
  %88 = ashr i32 %87, 16
  %89 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %90 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  %91 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 4
  %92 = load i32, i32* %91, align 16
  %93 = and i32 %92, 61440
  %94 = ashr i32 %93, 12
  %95 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %96 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 4
  %97 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 4
  %98 = load i32, i32* %97, align 16
  %99 = and i32 %98, 4095
  %100 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %101 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %100, i32 0, i32 8
  store i32 %99, i32* %101, align 8
  %102 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %103 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %168 [
    i32 130, label %105
    i32 131, label %105
    i32 129, label %105
    i32 128, label %134
  ]

105:                                              ; preds = %55, %55, %55
  %106 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %107 = load i32, i32* %106, align 16
  %108 = and i32 %107, -65536
  %109 = lshr i32 %108, 16
  %110 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %111 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %110, i32 0, i32 9
  store i32 %109, i32* %111, align 4
  %112 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %113 = load i32, i32* %112, align 16
  %114 = and i32 %113, 65520
  %115 = ashr i32 %114, 4
  %116 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %117 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %116, i32 0, i32 10
  store i32 %115, i32* %117, align 8
  %118 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %119 = load i32, i32* %118, align 16
  %120 = and i32 %119, 15
  %121 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %122 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %121, i32 0, i32 11
  store i32 %120, i32* %122, align 4
  %123 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 2
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, -65536
  %126 = lshr i32 %125, 16
  %127 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %128 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %127, i32 0, i32 12
  store i32 %126, i32* %128, align 8
  %129 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 2
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, 65535
  %132 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %133 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %132, i32 0, i32 13
  store i32 %131, i32* %133, align 4
  br label %168

134:                                              ; preds = %55
  %135 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %136 = load i32, i32* %135, align 16
  %137 = and i32 %136, 16777215
  %138 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %139 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %138, i32 0, i32 9
  store i32 %137, i32* %139, align 4
  %140 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 2
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, 16777215
  %143 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %144 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %143, i32 0, i32 12
  store i32 %142, i32* %144, align 8
  %145 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 2
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, -16777216
  %148 = lshr i32 %147, 16
  %149 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %150 = load i32, i32* %149, align 16
  %151 = and i32 %150, -16777216
  %152 = lshr i32 %151, 24
  %153 = or i32 %148, %152
  %154 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %155 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %154, i32 0, i32 13
  store i32 %153, i32* %155, align 4
  %156 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 3
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, -1048576
  %159 = lshr i32 %158, 20
  %160 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %161 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %160, i32 0, i32 10
  store i32 %159, i32* %161, align 8
  %162 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 3
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 983040
  %165 = ashr i32 %164, 16
  %166 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %167 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %166, i32 0, i32 11
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %55, %134, %105
  ret void
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @tr_selch(%struct.tr_chinfo*) #1

declare dso_local i32 @tr_rd(%struct.tr_info*, i64, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
