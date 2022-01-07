; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_get_delta.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_get_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"unable to read %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"delta size changed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.object_entry*)* @get_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_delta(%struct.object_entry* %0) #0 {
  %2 = alloca %struct.object_entry*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.object_entry* %0, %struct.object_entry** %2, align 8
  %10 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  %11 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i8* @read_object_file(i32* %12, i32* %9, i64* %3)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  %19 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @oid_to_hex(i32* %20)
  %22 = call i32 @die(i8* %17, i32 %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  %25 = call %struct.TYPE_6__* @DELTA(%struct.object_entry* %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i8* @read_object_file(i32* %27, i32* %9, i64* %4)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %23
  %32 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  %33 = call %struct.TYPE_6__* @DELTA(%struct.object_entry* %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 @oid_to_hex(i32* %35)
  %37 = call i32 @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %31, %23
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %3, align 8
  %43 = call i8* @diff_delta(i8* %39, i64 %40, i8* %41, i64 %42, i64* %5, i32 0)
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  %49 = call i64 @DELTA_SIZE(%struct.object_entry* %48)
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %38
  %52 = call i32 @BUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i8*, i8** %8, align 8
  ret i8* %58
}

declare dso_local i8* @read_object_file(i32*, i32*, i64*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local %struct.TYPE_6__* @DELTA(%struct.object_entry*) #1

declare dso_local i8* @diff_delta(i8*, i64, i8*, i64, i64*, i32) #1

declare dso_local i64 @DELTA_SIZE(%struct.object_entry*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
