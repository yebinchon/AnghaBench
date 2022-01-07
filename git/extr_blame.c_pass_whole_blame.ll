; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_pass_whole_blame.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_pass_whole_blame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_scoreboard = type { i32 }
%struct.blame_origin = type { %struct.blame_entry*, %struct.TYPE_2__ }
%struct.blame_entry = type { %struct.blame_origin*, %struct.blame_entry* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_scoreboard*, %struct.blame_origin*, %struct.blame_origin*)* @pass_whole_blame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pass_whole_blame(%struct.blame_scoreboard* %0, %struct.blame_origin* %1, %struct.blame_origin* %2) #0 {
  %4 = alloca %struct.blame_scoreboard*, align 8
  %5 = alloca %struct.blame_origin*, align 8
  %6 = alloca %struct.blame_origin*, align 8
  %7 = alloca %struct.blame_entry*, align 8
  %8 = alloca %struct.blame_entry*, align 8
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %4, align 8
  store %struct.blame_origin* %1, %struct.blame_origin** %5, align 8
  store %struct.blame_origin* %2, %struct.blame_origin** %6, align 8
  %9 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %10 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %3
  %15 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %16 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %22 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %21, i32 0, i32 1
  %23 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %24 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %23, i32 0, i32 1
  %25 = bitcast %struct.TYPE_2__* %22 to i8*
  %26 = bitcast %struct.TYPE_2__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  %27 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %28 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %20, %14, %3
  %31 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %32 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %31, i32 0, i32 0
  %33 = load %struct.blame_entry*, %struct.blame_entry** %32, align 8
  store %struct.blame_entry* %33, %struct.blame_entry** %8, align 8
  %34 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %35 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %34, i32 0, i32 0
  store %struct.blame_entry* null, %struct.blame_entry** %35, align 8
  %36 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  store %struct.blame_entry* %36, %struct.blame_entry** %7, align 8
  br label %37

37:                                               ; preds = %50, %30
  %38 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %39 = icmp ne %struct.blame_entry* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %42 = call i32 @blame_origin_incref(%struct.blame_origin* %41)
  %43 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %44 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %43, i32 0, i32 0
  %45 = load %struct.blame_origin*, %struct.blame_origin** %44, align 8
  %46 = call i32 @blame_origin_decref(%struct.blame_origin* %45)
  %47 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %48 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %49 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %48, i32 0, i32 0
  store %struct.blame_origin* %47, %struct.blame_origin** %49, align 8
  br label %50

50:                                               ; preds = %40
  %51 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %52 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %51, i32 0, i32 1
  %53 = load %struct.blame_entry*, %struct.blame_entry** %52, align 8
  store %struct.blame_entry* %53, %struct.blame_entry** %7, align 8
  br label %37

54:                                               ; preds = %37
  %55 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %56 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %57 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %58 = call i32 @queue_blames(%struct.blame_scoreboard* %55, %struct.blame_origin* %56, %struct.blame_entry* %57)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @blame_origin_incref(%struct.blame_origin*) #2

declare dso_local i32 @blame_origin_decref(%struct.blame_origin*) #2

declare dso_local i32 @queue_blames(%struct.blame_scoreboard*, %struct.blame_origin*, %struct.blame_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
