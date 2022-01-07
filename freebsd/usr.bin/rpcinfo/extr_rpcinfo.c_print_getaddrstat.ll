; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_print_getaddrstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_print_getaddrstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i8*, i32, i32, %struct.TYPE_4__* }
%struct.rpcent = type { i8* }

@.str = private unnamed_addr constant [36 x i8] c"prog\09\09vers\09netid\09  success\09failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%-16s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%-16d\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%d\09%s\09  %-12d\09%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*)* @print_getaddrstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_getaddrstat(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.rpcent*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %5, align 8
  br label %11

11:                                               ; preds = %45, %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %49

14:                                               ; preds = %11
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.rpcent* @getrpcbynumber(i32 %17)
  store %struct.rpcent* %18, %struct.rpcent** %6, align 8
  %19 = load %struct.rpcent*, %struct.rpcent** %6, align 8
  %20 = icmp ne %struct.rpcent* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.rpcent*, %struct.rpcent** %6, align 8
  %23 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %31

26:                                               ; preds = %14
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %34, i8* %37, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %31
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %5, align 8
  br label %11

49:                                               ; preds = %11
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.rpcent* @getrpcbynumber(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
