; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_filt_usertouch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_filt_usertouch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i32, i32, i32, i32, %struct.kevent }
%struct.kevent = type { i32, i32, i32 }

@NOTE_TRIGGER = common dso_local global i32 0, align 4
@NOTE_FFCTRLMASK = common dso_local global i32 0, align 4
@NOTE_FFLAGSMASK = common dso_local global i32 0, align 4
@EV_CLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"filt_usertouch() - invalid type (%ld)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*, %struct.kevent*, i32)* @filt_usertouch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filt_usertouch(%struct.knote* %0, %struct.kevent* %1, i32 %2) #0 {
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.kevent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.kevent* %1, %struct.kevent** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %105 [
    i32 132, label %9
    i32 133, label %75
  ]

9:                                                ; preds = %3
  %10 = load %struct.kevent*, %struct.kevent** %5, align 8
  %11 = getelementptr inbounds %struct.kevent, %struct.kevent* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NOTE_TRIGGER, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.knote*, %struct.knote** %4, align 8
  %18 = getelementptr inbounds %struct.knote, %struct.knote* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %9
  %20 = load %struct.kevent*, %struct.kevent** %5, align 8
  %21 = getelementptr inbounds %struct.kevent, %struct.kevent* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NOTE_FFCTRLMASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @NOTE_FFLAGSMASK, align 4
  %26 = load %struct.kevent*, %struct.kevent** %5, align 8
  %27 = getelementptr inbounds %struct.kevent, %struct.kevent* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %54 [
    i32 129, label %31
    i32 131, label %32
    i32 128, label %40
    i32 130, label %48
  ]

31:                                               ; preds = %19
  br label %55

32:                                               ; preds = %19
  %33 = load %struct.kevent*, %struct.kevent** %5, align 8
  %34 = getelementptr inbounds %struct.kevent, %struct.kevent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.knote*, %struct.knote** %4, align 8
  %37 = getelementptr inbounds %struct.knote, %struct.knote* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %55

40:                                               ; preds = %19
  %41 = load %struct.kevent*, %struct.kevent** %5, align 8
  %42 = getelementptr inbounds %struct.kevent, %struct.kevent* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.knote*, %struct.knote** %4, align 8
  %45 = getelementptr inbounds %struct.knote, %struct.knote* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %55

48:                                               ; preds = %19
  %49 = load %struct.kevent*, %struct.kevent** %5, align 8
  %50 = getelementptr inbounds %struct.kevent, %struct.kevent* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.knote*, %struct.knote** %4, align 8
  %53 = getelementptr inbounds %struct.knote, %struct.knote* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %55

54:                                               ; preds = %19
  br label %55

55:                                               ; preds = %54, %48, %40, %32, %31
  %56 = load %struct.kevent*, %struct.kevent** %5, align 8
  %57 = getelementptr inbounds %struct.kevent, %struct.kevent* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.knote*, %struct.knote** %4, align 8
  %60 = getelementptr inbounds %struct.knote, %struct.knote* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load %struct.kevent*, %struct.kevent** %5, align 8
  %62 = getelementptr inbounds %struct.kevent, %struct.kevent* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @EV_CLEAR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %55
  %68 = load %struct.knote*, %struct.knote** %4, align 8
  %69 = getelementptr inbounds %struct.knote, %struct.knote* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  %70 = load %struct.knote*, %struct.knote** %4, align 8
  %71 = getelementptr inbounds %struct.knote, %struct.knote* %70, i32 0, i32 4
  store i32 0, i32* %71, align 4
  %72 = load %struct.knote*, %struct.knote** %4, align 8
  %73 = getelementptr inbounds %struct.knote, %struct.knote* %72, i32 0, i32 3
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %55
  br label %108

75:                                               ; preds = %3
  %76 = load %struct.kevent*, %struct.kevent** %5, align 8
  %77 = load %struct.knote*, %struct.knote** %4, align 8
  %78 = getelementptr inbounds %struct.knote, %struct.knote* %77, i32 0, i32 6
  %79 = bitcast %struct.kevent* %76 to i8*
  %80 = bitcast %struct.kevent* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 12, i1 false)
  %81 = load %struct.knote*, %struct.knote** %4, align 8
  %82 = getelementptr inbounds %struct.knote, %struct.knote* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.kevent*, %struct.kevent** %5, align 8
  %85 = getelementptr inbounds %struct.kevent, %struct.kevent* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.knote*, %struct.knote** %4, align 8
  %87 = getelementptr inbounds %struct.knote, %struct.knote* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.kevent*, %struct.kevent** %5, align 8
  %90 = getelementptr inbounds %struct.kevent, %struct.kevent* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.knote*, %struct.knote** %4, align 8
  %92 = getelementptr inbounds %struct.knote, %struct.knote* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @EV_CLEAR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %75
  %98 = load %struct.knote*, %struct.knote** %4, align 8
  %99 = getelementptr inbounds %struct.knote, %struct.knote* %98, i32 0, i32 0
  store i32 0, i32* %99, align 4
  %100 = load %struct.knote*, %struct.knote** %4, align 8
  %101 = getelementptr inbounds %struct.knote, %struct.knote* %100, i32 0, i32 4
  store i32 0, i32* %101, align 4
  %102 = load %struct.knote*, %struct.knote** %4, align 8
  %103 = getelementptr inbounds %struct.knote, %struct.knote* %102, i32 0, i32 3
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %97, %75
  br label %108

105:                                              ; preds = %3
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %105, %104, %74
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @panic(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
