; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_walk.c_create_fsnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_walk.c_create_fsnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i8*, i32, %struct.TYPE_5__*, i8*, i8* }
%struct.TYPE_5__ = type { i32, %struct.stat }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@stampst = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i8*, i8*, i8*, %struct.stat*)* @create_fsnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @create_fsnode(i8* %0, i8* %1, i8* %2, %struct.stat* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.stat* %3, %struct.stat** %8, align 8
  %10 = call i8* @ecalloc(i32 1, i32 40)
  %11 = bitcast i8* %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i8* @estrdup(i8* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i8* @estrdup(i8* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = call i8* @ecalloc(i32 1, i32 40)
  %21 = bitcast i8* %20 to %struct.TYPE_5__*
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %23, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.stat*, %struct.stat** %8, align 8
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @S_IFMT, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load %struct.stat*, %struct.stat** %8, align 8
  %43 = bitcast %struct.stat* %41 to i8*
  %44 = bitcast %struct.stat* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 36, i1 false)
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stampst, i32 0, i32 8), align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stampst, i32 0, i32 7), align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %52, i32 0, i32 8
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stampst, i32 0, i32 6), align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %58, i32 0, i32 7
  store i32 %54, i32* %59, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stampst, i32 0, i32 5), align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %64, i32 0, i32 6
  store i32 %60, i32* %65, align 4
  br label %66

66:                                               ; preds = %47, %4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  ret %struct.TYPE_6__* %67
}

declare dso_local i8* @ecalloc(i32, i32) #1

declare dso_local i8* @estrdup(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
