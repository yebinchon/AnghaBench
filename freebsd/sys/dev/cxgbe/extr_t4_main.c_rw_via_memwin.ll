; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_rw_via_memwin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_rw_via_memwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.memwin* }
%struct.memwin = type { i32, i32, i32, i32 }

@NUM_MEMWIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@RA_RLOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rw_via_memwin(%struct.adapter* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.memwin*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @NUM_MEMWIN, align 4
  %22 = icmp slt i32 %20, %21
  br label %23

23:                                               ; preds = %19, %6
  %24 = phi i1 [ false, %6 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @MPASS(i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %12, align 4
  %32 = and i32 %31, 3
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %30, %23
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %7, align 4
  br label %160

39:                                               ; preds = %34
  %40 = load %struct.adapter*, %struct.adapter** %8, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 0
  %42 = load %struct.memwin*, %struct.memwin** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.memwin, %struct.memwin* %42, i64 %44
  store %struct.memwin* %45, %struct.memwin** %14, align 8
  br label %46

46:                                               ; preds = %155, %39
  %47 = load i32, i32* %12, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %159

49:                                               ; preds = %46
  %50 = load %struct.memwin*, %struct.memwin** %14, align 8
  %51 = getelementptr inbounds %struct.memwin, %struct.memwin* %50, i32 0, i32 3
  %52 = call i32 @rw_rlock(i32* %51)
  %53 = load %struct.memwin*, %struct.memwin** %14, align 8
  %54 = getelementptr inbounds %struct.memwin, %struct.memwin* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.memwin*, %struct.memwin** %14, align 8
  %57 = getelementptr inbounds %struct.memwin, %struct.memwin* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %55, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %49
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.memwin*, %struct.memwin** %14, align 8
  %66 = getelementptr inbounds %struct.memwin, %struct.memwin* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %100

69:                                               ; preds = %63, %49
  %70 = load %struct.memwin*, %struct.memwin** %14, align 8
  %71 = getelementptr inbounds %struct.memwin, %struct.memwin* %70, i32 0, i32 3
  %72 = call i32 @rw_try_upgrade(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %69
  %75 = load %struct.memwin*, %struct.memwin** %14, align 8
  %76 = getelementptr inbounds %struct.memwin, %struct.memwin* %75, i32 0, i32 3
  %77 = call i32 @rw_runlock(i32* %76)
  %78 = load %struct.memwin*, %struct.memwin** %14, align 8
  %79 = getelementptr inbounds %struct.memwin, %struct.memwin* %78, i32 0, i32 3
  %80 = call i32 @rw_wlock(i32* %79)
  br label %81

81:                                               ; preds = %74, %69
  %82 = load %struct.memwin*, %struct.memwin** %14, align 8
  %83 = getelementptr inbounds %struct.memwin, %struct.memwin* %82, i32 0, i32 3
  %84 = load i32, i32* @RA_WLOCKED, align 4
  %85 = call i32 @rw_assert(i32* %83, i32 %84)
  %86 = load %struct.adapter*, %struct.adapter** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @position_memwin(%struct.adapter* %86, i32 %87, i32 %88)
  %90 = load %struct.memwin*, %struct.memwin** %14, align 8
  %91 = getelementptr inbounds %struct.memwin, %struct.memwin* %90, i32 0, i32 3
  %92 = call i32 @rw_downgrade(i32* %91)
  %93 = load %struct.memwin*, %struct.memwin** %14, align 8
  %94 = getelementptr inbounds %struct.memwin, %struct.memwin* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.memwin*, %struct.memwin** %14, align 8
  %97 = getelementptr inbounds %struct.memwin, %struct.memwin* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %95, %98
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %81, %63
  %101 = load %struct.memwin*, %struct.memwin** %14, align 8
  %102 = getelementptr inbounds %struct.memwin, %struct.memwin* %101, i32 0, i32 3
  %103 = load i32, i32* @RA_RLOCKED, align 4
  %104 = call i32 @rw_assert(i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %150, %100
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* %12, align 4
  %111 = icmp sgt i32 %110, 0
  br label %112

112:                                              ; preds = %109, %105
  %113 = phi i1 [ false, %105 ], [ %111, %109 ]
  br i1 %113, label %114, label %155

114:                                              ; preds = %112
  %115 = load i32, i32* %13, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %114
  %118 = load %struct.adapter*, %struct.adapter** %8, align 8
  %119 = load %struct.memwin*, %struct.memwin** %14, align 8
  %120 = getelementptr inbounds %struct.memwin, %struct.memwin* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %121, %122
  %124 = load %struct.memwin*, %struct.memwin** %14, align 8
  %125 = getelementptr inbounds %struct.memwin, %struct.memwin* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %123, %126
  %128 = call i32 @t4_read_reg(%struct.adapter* %118, i32 %127)
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %16, align 4
  %130 = call i32 @le32toh(i32 %129)
  %131 = load i32*, i32** %11, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %11, align 8
  store i32 %130, i32* %131, align 4
  br label %150

133:                                              ; preds = %114
  %134 = load i32*, i32** %11, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %11, align 8
  %136 = load i32, i32* %134, align 4
  store i32 %136, i32* %16, align 4
  %137 = load %struct.adapter*, %struct.adapter** %8, align 8
  %138 = load %struct.memwin*, %struct.memwin** %14, align 8
  %139 = getelementptr inbounds %struct.memwin, %struct.memwin* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %140, %141
  %143 = load %struct.memwin*, %struct.memwin** %14, align 8
  %144 = getelementptr inbounds %struct.memwin, %struct.memwin* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %142, %145
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @htole32(i32 %147)
  %149 = call i32 @t4_write_reg(%struct.adapter* %137, i32 %146, i32 %148)
  br label %150

150:                                              ; preds = %133, %117
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 4
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %12, align 4
  %154 = sub nsw i32 %153, 4
  store i32 %154, i32* %12, align 4
  br label %105

155:                                              ; preds = %112
  %156 = load %struct.memwin*, %struct.memwin** %14, align 8
  %157 = getelementptr inbounds %struct.memwin, %struct.memwin* %156, i32 0, i32 3
  %158 = call i32 @rw_runlock(i32* %157)
  br label %46

159:                                              ; preds = %46
  store i32 0, i32* %7, align 4
  br label %160

160:                                              ; preds = %159, %37
  %161 = load i32, i32* %7, align 4
  ret i32 %161
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @rw_rlock(i32*) #1

declare dso_local i32 @rw_try_upgrade(i32*) #1

declare dso_local i32 @rw_runlock(i32*) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @position_memwin(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rw_downgrade(i32*) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
