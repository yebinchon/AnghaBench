; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_sound.c_main.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_sound.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SoundReg = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__const.main.s = private unnamed_addr constant %struct.SoundReg { %struct.TYPE_10__ { i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 0, i32 4, i32 115, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_9__ { i32 0, i32 1, i32 2, i32 4, i32 0, i32 8, i32 215, i32 6, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_8__ { i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 214, i32 6, i32 0, i32 0, i32 0 }, %struct.TYPE_7__ { i32 0, i32 58, i32 0, i32 1, i32 0, i32 10, i32 0, i32 0, i32 0, i32 0, i32 1 }, %struct.TYPE_6__ { i32 7, i32 0, i32 7, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0 } }, align 4
@NR52_REG = common dso_local global i32 0, align 4
@soundReg = common dso_local global %struct.SoundReg* null, align 8
@NR10_REG = common dso_local global i8* null, align 8
@NR11_REG = common dso_local global i8* null, align 8
@NR12_REG = common dso_local global i8* null, align 8
@NR13_REG = common dso_local global i8* null, align 8
@NR14_REG = common dso_local global i8* null, align 8
@NR21_REG = common dso_local global i8* null, align 8
@NR22_REG = common dso_local global i8* null, align 8
@NR23_REG = common dso_local global i8* null, align 8
@NR24_REG = common dso_local global i8* null, align 8
@NR30_REG = common dso_local global i8* null, align 8
@NR31_REG = common dso_local global i8* null, align 8
@NR32_REG = common dso_local global i8* null, align 8
@NR33_REG = common dso_local global i8* null, align 8
@NR34_REG = common dso_local global i8* null, align 8
@NR41_REG = common dso_local global i8* null, align 8
@NR42_REG = common dso_local global i8* null, align 8
@NR43_REG = common dso_local global i8* null, align 8
@NR44_REG = common dso_local global i8* null, align 8
@NR50_REG = common dso_local global i8* null, align 8
@NR51_REG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca %struct.SoundReg, align 4
  %2 = bitcast %struct.SoundReg* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.SoundReg* @__const.main.s to i8*), i64 264, i1 false)
  store i32 128, i32* @NR52_REG, align 4
  store %struct.SoundReg* %1, %struct.SoundReg** @soundReg, align 8
  %3 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %4 = bitcast %struct.SoundReg* %3 to i8**
  %5 = getelementptr inbounds i8*, i8** %4, i64 0
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** @NR10_REG, align 8
  %7 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %8 = bitcast %struct.SoundReg* %7 to i8**
  %9 = getelementptr inbounds i8*, i8** %8, i64 1
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** @NR11_REG, align 8
  %11 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %12 = bitcast %struct.SoundReg* %11 to i8**
  %13 = getelementptr inbounds i8*, i8** %12, i64 2
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** @NR12_REG, align 8
  %15 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %16 = bitcast %struct.SoundReg* %15 to i8**
  %17 = getelementptr inbounds i8*, i8** %16, i64 3
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** @NR13_REG, align 8
  %19 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %20 = bitcast %struct.SoundReg* %19 to i8**
  %21 = getelementptr inbounds i8*, i8** %20, i64 4
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** @NR14_REG, align 8
  %23 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %24 = bitcast %struct.SoundReg* %23 to i8**
  %25 = getelementptr inbounds i8*, i8** %24, i64 6
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** @NR21_REG, align 8
  %27 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %28 = bitcast %struct.SoundReg* %27 to i8**
  %29 = getelementptr inbounds i8*, i8** %28, i64 7
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** @NR22_REG, align 8
  %31 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %32 = bitcast %struct.SoundReg* %31 to i8**
  %33 = getelementptr inbounds i8*, i8** %32, i64 8
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** @NR23_REG, align 8
  %35 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %36 = bitcast %struct.SoundReg* %35 to i8**
  %37 = getelementptr inbounds i8*, i8** %36, i64 9
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** @NR24_REG, align 8
  %39 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %40 = bitcast %struct.SoundReg* %39 to i8**
  %41 = getelementptr inbounds i8*, i8** %40, i64 10
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** @NR30_REG, align 8
  %43 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %44 = bitcast %struct.SoundReg* %43 to i8**
  %45 = getelementptr inbounds i8*, i8** %44, i64 11
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** @NR31_REG, align 8
  %47 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %48 = bitcast %struct.SoundReg* %47 to i8**
  %49 = getelementptr inbounds i8*, i8** %48, i64 12
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** @NR32_REG, align 8
  %51 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %52 = bitcast %struct.SoundReg* %51 to i8**
  %53 = getelementptr inbounds i8*, i8** %52, i64 13
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** @NR33_REG, align 8
  %55 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %56 = bitcast %struct.SoundReg* %55 to i8**
  %57 = getelementptr inbounds i8*, i8** %56, i64 14
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** @NR34_REG, align 8
  %59 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %60 = bitcast %struct.SoundReg* %59 to i8**
  %61 = getelementptr inbounds i8*, i8** %60, i64 16
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** @NR41_REG, align 8
  %63 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %64 = bitcast %struct.SoundReg* %63 to i8**
  %65 = getelementptr inbounds i8*, i8** %64, i64 17
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** @NR42_REG, align 8
  %67 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %68 = bitcast %struct.SoundReg* %67 to i8**
  %69 = getelementptr inbounds i8*, i8** %68, i64 18
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** @NR43_REG, align 8
  %71 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %72 = bitcast %struct.SoundReg* %71 to i8**
  %73 = getelementptr inbounds i8*, i8** %72, i64 19
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** @NR44_REG, align 8
  %75 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %76 = bitcast %struct.SoundReg* %75 to i8**
  %77 = getelementptr inbounds i8*, i8** %76, i64 20
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** @NR50_REG, align 8
  %79 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %80 = bitcast %struct.SoundReg* %79 to i8**
  %81 = getelementptr inbounds i8*, i8** %80, i64 21
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** @NR51_REG, align 8
  %83 = load %struct.SoundReg*, %struct.SoundReg** @soundReg, align 8
  %84 = bitcast %struct.SoundReg* %83 to i8**
  %85 = getelementptr inbounds i8*, i8** %84, i64 22
  %86 = load i8*, i8** %85, align 8
  %87 = ptrtoint i8* %86 to i32
  store i32 %87, i32* @NR52_REG, align 4
  %88 = call i32 (...) @cls()
  %89 = call i32 @wait_event(i32 1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cls(...) #2

declare dso_local i32 @wait_event(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
