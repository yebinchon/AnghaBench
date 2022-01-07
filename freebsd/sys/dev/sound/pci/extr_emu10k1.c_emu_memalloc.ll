; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_memalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_memalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { %struct.emu_mem }
%struct.emu_mem = type { i32*, i32*, i32 }
%struct.emu_memblk = type { i32, i32, i32, i64, i32 }

@EMUPAGESIZE = common dso_local global i32 0, align 4
@EMUMAXPAGES = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sc_info*, i32, i64*)* @emu_memalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @emu_memalloc(%struct.sc_info* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.emu_mem*, align 8
  %15 = alloca %struct.emu_memblk*, align 8
  %16 = alloca i8*, align 8
  store %struct.sc_info* %0, %struct.sc_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %17 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %18 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %17, i32 0, i32 0
  store %struct.emu_mem* %18, %struct.emu_mem** %14, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @EMUPAGESIZE, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @EMUPAGESIZE, align 4
  %25 = mul nsw i32 %23, %24
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %3
  store i32 0, i32* %13, align 4
  store i32 1, i32* %9, align 4
  br label %31

31:                                               ; preds = %75, %30
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* @EMUMAXPAGES, align 4
  %39 = icmp slt i32 %37, %38
  br label %40

40:                                               ; preds = %34, %31
  %41 = phi i1 [ false, %31 ], [ %39, %34 ]
  br i1 %41, label %42, label %76

42:                                               ; preds = %40
  store i32 1, i32* %13, align 4
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %66, %42
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %46, %47
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = load %struct.emu_mem*, %struct.emu_mem** %14, align 8
  %52 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = ashr i32 %54, 3
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %59, 7
  %61 = shl i32 1, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %64, %50
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %44

69:                                               ; preds = %44
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %72, %69
  br label %31

76:                                               ; preds = %40
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  store i8* null, i8** %4, align 8
  br label %166

80:                                               ; preds = %76
  %81 = load i32, i32* @M_DEVBUF, align 4
  %82 = load i32, i32* @M_NOWAIT, align 4
  %83 = call %struct.emu_memblk* @malloc(i32 32, i32 %81, i32 %82)
  store %struct.emu_memblk* %83, %struct.emu_memblk** %15, align 8
  %84 = load %struct.emu_memblk*, %struct.emu_memblk** %15, align 8
  %85 = icmp eq %struct.emu_memblk* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i8* null, i8** %4, align 8
  br label %166

87:                                               ; preds = %80
  %88 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.emu_memblk*, %struct.emu_memblk** %15, align 8
  %91 = getelementptr inbounds %struct.emu_memblk, %struct.emu_memblk* %90, i32 0, i32 3
  %92 = load %struct.emu_memblk*, %struct.emu_memblk** %15, align 8
  %93 = getelementptr inbounds %struct.emu_memblk, %struct.emu_memblk* %92, i32 0, i32 4
  %94 = call i8* @emu_malloc(%struct.sc_info* %88, i32 %89, i64* %91, i32* %93)
  store i8* %94, i8** %16, align 8
  %95 = load %struct.emu_memblk*, %struct.emu_memblk** %15, align 8
  %96 = getelementptr inbounds %struct.emu_memblk, %struct.emu_memblk* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %7, align 8
  store i64 %97, i64* %98, align 8
  %99 = load i8*, i8** %16, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %87
  %102 = load %struct.emu_memblk*, %struct.emu_memblk** %15, align 8
  %103 = load i32, i32* @M_DEVBUF, align 4
  %104 = call i32 @free(%struct.emu_memblk* %102, i32 %103)
  store i8* null, i8** %4, align 8
  br label %166

105:                                              ; preds = %87
  %106 = load i8*, i8** %16, align 8
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.emu_memblk*, %struct.emu_memblk** %15, align 8
  %109 = getelementptr inbounds %struct.emu_memblk, %struct.emu_memblk* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.emu_memblk*, %struct.emu_memblk** %15, align 8
  %112 = getelementptr inbounds %struct.emu_memblk, %struct.emu_memblk* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.emu_memblk*, %struct.emu_memblk** %15, align 8
  %115 = getelementptr inbounds %struct.emu_memblk, %struct.emu_memblk* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  store i32 0, i32* %11, align 4
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %156, %105
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %119, %120
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %159

123:                                              ; preds = %117
  %124 = load i32, i32* %10, align 4
  %125 = and i32 %124, 7
  %126 = shl i32 1, %125
  %127 = load %struct.emu_mem*, %struct.emu_mem** %14, align 8
  %128 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = ashr i32 %130, 3
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %126
  store i32 %135, i32* %133, align 4
  %136 = load %struct.emu_memblk*, %struct.emu_memblk** %15, align 8
  %137 = getelementptr inbounds %struct.emu_memblk, %struct.emu_memblk* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = shl i32 %143, 1
  %145 = load i32, i32* %10, align 4
  %146 = or i32 %144, %145
  %147 = load %struct.emu_mem*, %struct.emu_mem** %14, align 8
  %148 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %146, i32* %152, align 4
  %153 = load i32, i32* @EMUPAGESIZE, align 4
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %11, align 4
  br label %156

156:                                              ; preds = %123
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %117

159:                                              ; preds = %117
  %160 = load %struct.emu_mem*, %struct.emu_mem** %14, align 8
  %161 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %160, i32 0, i32 2
  %162 = load %struct.emu_memblk*, %struct.emu_memblk** %15, align 8
  %163 = load i32, i32* @link, align 4
  %164 = call i32 @SLIST_INSERT_HEAD(i32* %161, %struct.emu_memblk* %162, i32 %163)
  %165 = load i8*, i8** %16, align 8
  store i8* %165, i8** %4, align 8
  br label %166

166:                                              ; preds = %159, %101, %86, %79
  %167 = load i8*, i8** %4, align 8
  ret i8* %167
}

declare dso_local %struct.emu_memblk* @malloc(i32, i32, i32) #1

declare dso_local i8* @emu_malloc(%struct.sc_info*, i32, i64*, i32*) #1

declare dso_local i32 @free(%struct.emu_memblk*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.emu_memblk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
