; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_cd9660.c_cd9660_create_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_cd9660.c_cd9660_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32* }

@CD9660_TYPE_FILE = common dso_local global i32 0, align 4
@CD9660_TYPE_VIRTUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32*, i8*, %struct.TYPE_10__*, %struct.TYPE_10__*)* @cd9660_create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @cd9660_create_file(i32* %0, i8* %1, %struct.TYPE_10__* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %14 = call %struct.TYPE_10__* @cd9660_create_virtual_entry(i32* %11, i8* %12, %struct.TYPE_10__* %13, i32 1, i32 1)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %10, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %16 = icmp eq %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %49

18:                                               ; preds = %4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @CD9660_TYPE_FILE, align 4
  %22 = load i32, i32* @CD9660_TYPE_VIRTUAL, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = call i32* @ecalloc(i32 1, i32 4)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32* %26, i32** %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32 %36, i32* %41, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = call i64 @cd9660_translate_node_common(i32* %42, %struct.TYPE_10__* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %18
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %49

47:                                               ; preds = %18
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %5, align 8
  br label %49

49:                                               ; preds = %47, %46, %17
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %50
}

declare dso_local %struct.TYPE_10__* @cd9660_create_virtual_entry(i32*, i8*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32* @ecalloc(i32, i32) #1

declare dso_local i64 @cd9660_translate_node_common(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
