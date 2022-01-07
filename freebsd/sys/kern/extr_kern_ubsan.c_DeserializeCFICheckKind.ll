; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_DeserializeCFICheckKind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_DeserializeCFICheckKind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"virtual call\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"non-virtual call\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"base-to-derived cast\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"cast to unrelated type\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"indirect function call\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"non-virtual pointer to member function call\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"virtual pointer to member function call\00", align 1
@__const.DeserializeCFICheckKind.rgczCFICheckKinds = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0)], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @DeserializeCFICheckKind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @DeserializeCFICheckKind(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [7 x i8*], align 16
  store i64 %0, i64* %2, align 8
  %4 = bitcast [7 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([7 x i8*]* @__const.DeserializeCFICheckKind.rgczCFICheckKinds to i8*), i64 56, i1 false)
  %5 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 0
  %6 = call i64 @__arraycount(i8** %5)
  %7 = load i64, i64* %2, align 8
  %8 = icmp ugt i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 %11
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
