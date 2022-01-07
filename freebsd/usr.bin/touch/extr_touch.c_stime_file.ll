; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/touch/extr_touch.c_stime_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/touch/extr_touch.c_stime_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.stat = type { %struct.timespec, %struct.timespec }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.timespec*)* @stime_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stime_file(i8* %0, %struct.timespec* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @stat(i8* %6, %struct.stat* %5)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.timespec*, %struct.timespec** %4, align 8
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i64 0
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %16 = bitcast %struct.timespec* %14 to i8*
  %17 = bitcast %struct.timespec* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load %struct.timespec*, %struct.timespec** %4, align 8
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i64 1
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %21 = bitcast %struct.timespec* %19 to i8*
  %22 = bitcast %struct.timespec* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  ret void
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
