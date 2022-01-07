; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_uuid.c_snprintf_uuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_uuid.c_snprintf_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uuid = type { i32 }
%struct.uuid_private = type { i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"%08x-%04x-%04x-%04x-%04x%04x%04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snprintf_uuid(i8* %0, i64 %1, %struct.uuid* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.uuid*, align 8
  %7 = alloca %struct.uuid_private*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.uuid* %2, %struct.uuid** %6, align 8
  %9 = load %struct.uuid*, %struct.uuid** %6, align 8
  %10 = bitcast %struct.uuid* %9 to %struct.uuid_private*
  store %struct.uuid_private* %10, %struct.uuid_private** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.uuid_private*, %struct.uuid_private** %7, align 8
  %14 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.uuid_private*, %struct.uuid_private** %7, align 8
  %19 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.uuid_private*, %struct.uuid_private** %7, align 8
  %24 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.uuid_private*, %struct.uuid_private** %7, align 8
  %29 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @be16toh(i32 %30)
  %32 = load %struct.uuid_private*, %struct.uuid_private** %7, align 8
  %33 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be16toh(i32 %36)
  %38 = load %struct.uuid_private*, %struct.uuid_private** %7, align 8
  %39 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be16toh(i32 %42)
  %44 = load %struct.uuid_private*, %struct.uuid_private** %7, align 8
  %45 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @be16toh(i32 %48)
  %50 = call i32 @snprintf(i8* %11, i64 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %22, i32 %27, i32 %31, i32 %37, i32 %43, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @be16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
