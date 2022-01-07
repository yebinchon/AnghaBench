; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_dump_netobj.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_dump_netobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netobj = type { i64, i32 }

@MAXBUFFERSIZE = common dso_local global i32 0, align 4
@debug_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Null netobj pointer\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Size zero netobj\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"netobj: len: %d  data: %s :::  %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_netobj(%struct.netobj* %0) #0 {
  %2 = alloca %struct.netobj*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.netobj* %0, %struct.netobj** %2, align 8
  %7 = load i32, i32* @MAXBUFFERSIZE, align 4
  %8 = mul nsw i32 %7, 2
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @MAXBUFFERSIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %15 = load i32, i32* @debug_level, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %46

18:                                               ; preds = %1
  %19 = load %struct.netobj*, %struct.netobj** %2, align 8
  %20 = icmp eq %struct.netobj* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %45

23:                                               ; preds = %18
  %24 = load %struct.netobj*, %struct.netobj** %2, align 8
  %25 = getelementptr inbounds %struct.netobj, %struct.netobj* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %44

30:                                               ; preds = %23
  %31 = load %struct.netobj*, %struct.netobj** %2, align 8
  %32 = getelementptr inbounds %struct.netobj, %struct.netobj* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.netobj*, %struct.netobj** %2, align 8
  %35 = getelementptr inbounds %struct.netobj, %struct.netobj* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %9 to i32
  %38 = trunc i64 %13 to i32
  %39 = call i32 @dump_static_object(i32 %33, i64 %36, i8* %11, i32 %37, i8* %14, i32 %38)
  %40 = load %struct.netobj*, %struct.netobj** %2, align 8
  %41 = getelementptr inbounds %struct.netobj, %struct.netobj* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %42, i8* %11, i8* %14)
  br label %44

44:                                               ; preds = %30, %28
  br label %45

45:                                               ; preds = %44, %21
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %17
  %47 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %6, align 4
  switch i32 %48, label %50 [
    i32 0, label %49
    i32 1, label %49
  ]

49:                                               ; preds = %46, %46
  ret void

50:                                               ; preds = %46
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @debuglog(i8*, ...) #2

declare dso_local i32 @dump_static_object(i32, i64, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
