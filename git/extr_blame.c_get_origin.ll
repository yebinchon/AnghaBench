; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_get_origin.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_get_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_origin = type { %struct.blame_origin*, i32 }
%struct.commit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blame_origin* (%struct.commit*, i8*)* @get_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blame_origin* @get_origin(%struct.commit* %0, i8* %1) #0 {
  %3 = alloca %struct.blame_origin*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.blame_origin*, align 8
  %7 = alloca %struct.blame_origin*, align 8
  store %struct.commit* %0, %struct.commit** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.commit*, %struct.commit** %4, align 8
  %9 = call i8* @get_blame_suspects(%struct.commit* %8)
  %10 = bitcast i8* %9 to %struct.blame_origin*
  store %struct.blame_origin* %10, %struct.blame_origin** %6, align 8
  store %struct.blame_origin* null, %struct.blame_origin** %7, align 8
  br label %11

11:                                               ; preds = %42, %2
  %12 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %13 = icmp ne %struct.blame_origin* %12, null
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  %15 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %16 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strcmp(i32 %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %14
  %22 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %23 = icmp ne %struct.blame_origin* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %26 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %25, i32 0, i32 0
  %27 = load %struct.blame_origin*, %struct.blame_origin** %26, align 8
  %28 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %29 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %28, i32 0, i32 0
  store %struct.blame_origin* %27, %struct.blame_origin** %29, align 8
  %30 = load %struct.commit*, %struct.commit** %4, align 8
  %31 = call i8* @get_blame_suspects(%struct.commit* %30)
  %32 = bitcast i8* %31 to %struct.blame_origin*
  %33 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %34 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %33, i32 0, i32 0
  store %struct.blame_origin* %32, %struct.blame_origin** %34, align 8
  %35 = load %struct.commit*, %struct.commit** %4, align 8
  %36 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %37 = call i32 @set_blame_suspects(%struct.commit* %35, %struct.blame_origin* %36)
  br label %38

38:                                               ; preds = %24, %21
  %39 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %40 = call %struct.blame_origin* @blame_origin_incref(%struct.blame_origin* %39)
  store %struct.blame_origin* %40, %struct.blame_origin** %3, align 8
  br label %51

41:                                               ; preds = %14
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  store %struct.blame_origin* %43, %struct.blame_origin** %7, align 8
  %44 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %45 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %44, i32 0, i32 0
  %46 = load %struct.blame_origin*, %struct.blame_origin** %45, align 8
  store %struct.blame_origin* %46, %struct.blame_origin** %6, align 8
  br label %11

47:                                               ; preds = %11
  %48 = load %struct.commit*, %struct.commit** %4, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call %struct.blame_origin* @make_origin(%struct.commit* %48, i8* %49)
  store %struct.blame_origin* %50, %struct.blame_origin** %3, align 8
  br label %51

51:                                               ; preds = %47, %38
  %52 = load %struct.blame_origin*, %struct.blame_origin** %3, align 8
  ret %struct.blame_origin* %52
}

declare dso_local i8* @get_blame_suspects(%struct.commit*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @set_blame_suspects(%struct.commit*, %struct.blame_origin*) #1

declare dso_local %struct.blame_origin* @blame_origin_incref(%struct.blame_origin*) #1

declare dso_local %struct.blame_origin* @make_origin(%struct.commit*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
