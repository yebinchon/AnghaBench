; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/file/extr_dup_test.c_getafile.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/file/extr_dup_test.c_getafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.getafile.temp = private unnamed_addr constant [19 x i8] c"/tmp/dup2XXXXXXXXX\00", align 16
@.str = private unnamed_addr constant [8 x i8] c"mkstemp\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ftruncate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @getafile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getafile() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [19 x i8], align 16
  %3 = bitcast [19 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 getelementptr inbounds ([19 x i8], [19 x i8]* @__const.getafile.temp, i32 0, i32 0), i64 19, i1 false)
  %4 = getelementptr inbounds [19 x i8], [19 x i8]* %2, i64 0, i64 0
  %5 = call i32 @mkstemp(i8* %4)
  store i32 %5, i32* %1, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  %10 = getelementptr inbounds [19 x i8], [19 x i8]* %2, i64 0, i64 0
  %11 = call i32 @remove(i8* %10)
  %12 = load i32, i32* %1, align 4
  %13 = call i64 @ftruncate(i32 %12, i32 1024)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %9
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @remove(i8*) #2

declare dso_local i64 @ftruncate(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
