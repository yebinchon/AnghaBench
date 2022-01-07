; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_pinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_pinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, %struct.TYPE_3__*, i32 }

@VM_MIN_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"moea_pinit: virt pmap\00", align 1
@moea_vsid_mutex = common dso_local global i32 0, align 4
@NPMAPS = common dso_local global i32 0, align 4
@moea_vsidcontext = common dso_local global i32 0, align 4
@VSID_NBPW = common dso_local global i32 0, align 4
@moea_vsid_bitmap = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Allocating in-use VSID group %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"moea_pinit: out of segments\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moea_pinit(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = ptrtoint %struct.TYPE_3__* %10 to i32
  %12 = load i32, i32* @VM_MIN_KERNEL_ADDRESS, align 4
  %13 = icmp slt i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = call i32 @RB_INIT(i32* %17)
  store i32 0, i32* %7, align 4
  %19 = call i32 asm sideeffect "mftb $0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = ptrtoint %struct.TYPE_3__* %21 to i32
  %23 = call i64 @moea_kextract(i32 %20, i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_3__*
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %26, align 8
  %27 = icmp eq %struct.TYPE_3__* %24, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %31, align 8
  br label %32

32:                                               ; preds = %28, %2
  %33 = call i32 @mtx_lock(i32* @moea_vsid_mutex)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %136, %32
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @NPMAPS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %140

38:                                               ; preds = %34
  %39 = load i32, i32* @moea_vsidcontext, align 4
  %40 = mul nsw i32 %39, 4357
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* @moea_vsidcontext, align 4
  %43 = load i32, i32* @moea_vsidcontext, align 4
  %44 = load i32, i32* @NPMAPS, align 4
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %43, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %136

50:                                               ; preds = %38
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %51, 5
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @VSID_NBPW, align 4
  %55 = sub nsw i32 %54, 1
  %56 = and i32 %53, %55
  %57 = shl i32 1, %56
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @moea_vsidcontext, align 4
  %59 = and i32 %58, 1048575
  store i32 %59, i32* %8, align 4
  %60 = load i32*, i32** @moea_vsid_bitmap, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %96

68:                                               ; preds = %50
  %69 = load i32*, i32** @moea_vsid_bitmap, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* @moea_vsidcontext, align 4
  %77 = ashr i32 %76, 20
  store i32 %77, i32* %7, align 4
  br label %136

78:                                               ; preds = %68
  %79 = load i32*, i32** @moea_vsid_bitmap, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %83, -1
  %85 = call i32 @ffs(i32 %84)
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = shl i32 1, %87
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @VSID_NBPW, align 4
  %90 = call i32 @rounddown2(i32 1048575, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %78, %50
  %97 = load i32*, i32** @moea_vsid_bitmap, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 @KASSERT(i32 %106, i8* %109)
  %111 = load i32, i32* %6, align 4
  %112 = load i32*, i32** @moea_vsid_bitmap, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %111
  store i32 %117, i32* %115, align 4
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %131, %96
  %119 = load i32, i32* %5, align 4
  %120 = icmp slt i32 %119, 16
  br i1 %120, label %121, label %134

121:                                              ; preds = %118
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @VSID_MAKE(i32 %122, i32 %123)
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %124, i32* %130, align 4
  br label %131

131:                                              ; preds = %121
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %118

134:                                              ; preds = %118
  %135 = call i32 @mtx_unlock(i32* @moea_vsid_mutex)
  br label %143

136:                                              ; preds = %75, %49
  %137 = load i32, i32* @VSID_NBPW, align 4
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %5, align 4
  br label %34

140:                                              ; preds = %34
  %141 = call i32 @mtx_unlock(i32* @moea_vsid_mutex)
  %142 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %134
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @RB_INIT(i32*) #1

declare dso_local i64 @moea_kextract(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @rounddown2(i32, i32) #1

declare dso_local i32 @VSID_MAKE(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 916}
