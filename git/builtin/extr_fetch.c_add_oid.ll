; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_add_oid.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_add_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.oid_array = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @add_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_oid(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.oid_array*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.oid_array*
  store %struct.oid_array* %11, %struct.oid_array** %9, align 8
  %12 = load %struct.oid_array*, %struct.oid_array** %9, align 8
  %13 = load %struct.object_id*, %struct.object_id** %6, align 8
  %14 = call i32 @oid_array_append(%struct.oid_array* %12, %struct.object_id* %13)
  ret i32 0
}

declare dso_local i32 @oid_array_append(%struct.oid_array*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
