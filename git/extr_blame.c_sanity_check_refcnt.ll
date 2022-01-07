; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_sanity_check_refcnt.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_sanity_check_refcnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_scoreboard = type { i32 (%struct.blame_scoreboard*, i32)*, %struct.blame_entry* }
%struct.blame_entry = type { %struct.TYPE_6__*, %struct.blame_entry* }
%struct.TYPE_6__ = type { i64, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s in %s has negative refcnt %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_scoreboard*)* @sanity_check_refcnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sanity_check_refcnt(%struct.blame_scoreboard* %0) #0 {
  %2 = alloca %struct.blame_scoreboard*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.blame_entry*, align 8
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %2, align 8
  %6 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %5, i32 0, i32 1
  %7 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  store %struct.blame_entry* %7, %struct.blame_entry** %4, align 8
  br label %8

8:                                                ; preds = %40, %1
  %9 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %10 = icmp ne %struct.blame_entry* %9, null
  br i1 %10, label %11, label %44

11:                                               ; preds = %8
  %12 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %13 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %11
  %19 = load i32, i32* @stderr, align 4
  %20 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %21 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %26 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i8* @oid_to_hex(i32* %31)
  %33 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %34 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %32, i64 %37)
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %18, %11
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %42 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %41, i32 0, i32 1
  %43 = load %struct.blame_entry*, %struct.blame_entry** %42, align 8
  store %struct.blame_entry* %43, %struct.blame_entry** %4, align 8
  br label %8

44:                                               ; preds = %8
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %2, align 8
  %49 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %48, i32 0, i32 0
  %50 = load i32 (%struct.blame_scoreboard*, i32)*, i32 (%struct.blame_scoreboard*, i32)** %49, align 8
  %51 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 %50(%struct.blame_scoreboard* %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %44
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i64) #1

declare dso_local i8* @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
