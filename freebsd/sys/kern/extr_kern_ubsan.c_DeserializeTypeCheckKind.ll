; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_DeserializeTypeCheckKind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_DeserializeTypeCheckKind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"load of\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"store to\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"reference binding to\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"member access within\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"member call on\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"constructor call on\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"downcast of\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"upcast of\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"cast to virtual base of\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"_Nonnull binding to\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"dynamic operation on\00", align 1
@__const.DeserializeTypeCheckKind.rgczTypeCheckKinds = private unnamed_addr constant [12 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0)], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @DeserializeTypeCheckKind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @DeserializeTypeCheckKind(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [12 x i8*], align 16
  store i64 %0, i64* %2, align 8
  %4 = bitcast [12 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([12 x i8*]* @__const.DeserializeTypeCheckKind.rgczTypeCheckKinds to i8*), i64 96, i1 false)
  %5 = getelementptr inbounds [12 x i8*], [12 x i8*]* %3, i64 0, i64 0
  %6 = call i64 @__arraycount(i8** %5)
  %7 = load i64, i64* %2, align 8
  %8 = icmp ugt i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds [12 x i8*], [12 x i8*]* %3, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  ret i8* %13
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i64 @__arraycount(i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
