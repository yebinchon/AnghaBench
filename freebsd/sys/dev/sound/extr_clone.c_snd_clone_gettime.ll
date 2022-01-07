; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_clone = type { %struct.timespec }
%struct.timespec = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"NULL snd_clone\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"NULL timespec\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_clone_gettime(%struct.snd_clone* %0, %struct.timespec* %1) #0 {
  %3 = alloca %struct.snd_clone*, align 8
  %4 = alloca %struct.timespec*, align 8
  store %struct.snd_clone* %0, %struct.snd_clone** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %5 = load %struct.snd_clone*, %struct.snd_clone** %3, align 8
  %6 = icmp ne %struct.snd_clone* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @SND_CLONE_ASSERT(i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.timespec*, %struct.timespec** %4, align 8
  %10 = icmp ne %struct.timespec* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @SND_CLONE_ASSERT(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.timespec*, %struct.timespec** %4, align 8
  %14 = load %struct.snd_clone*, %struct.snd_clone** %3, align 8
  %15 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %14, i32 0, i32 0
  %16 = bitcast %struct.timespec* %13 to i8*
  %17 = bitcast %struct.timespec* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  ret i32 0
}

declare dso_local i32 @SND_CLONE_ASSERT(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
