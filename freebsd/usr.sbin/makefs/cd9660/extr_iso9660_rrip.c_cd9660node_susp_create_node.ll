; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_iso9660_rrip.c_cd9660node_susp_create_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_iso9660_rrip.c_cd9660node_susp_create_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISO_SUSP_ATTRIBUTES = type { i32, i32, i8*, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ISO_SUSP_ATTRIBUTES* @cd9660node_susp_create_node(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ISO_SUSP_ATTRIBUTES*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call %struct.ISO_SUSP_ATTRIBUTES* @emalloc(i32 40)
  store %struct.ISO_SUSP_ATTRIBUTES* %10, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %13 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %16 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %18 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %23 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %21, i8* %25, align 1
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %30 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 %28, i8* %32, align 1
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %35 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %40 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 %38, i8* %46, align 1
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  %51 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  store i8 %49, i8* %57, align 1
  %58 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %9, align 8
  ret %struct.ISO_SUSP_ATTRIBUTES* %58
}

declare dso_local %struct.ISO_SUSP_ATTRIBUTES* @emalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
