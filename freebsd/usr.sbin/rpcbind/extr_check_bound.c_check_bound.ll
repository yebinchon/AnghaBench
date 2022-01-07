; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_check_bound.c_check_bound.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_check_bound.c_check_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdlist = type { i64, i32 }
%struct.netbuf = type { %struct.netbuf*, i32 }
%struct.sockaddr = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fdlist*, i8*)* @check_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_bound(%struct.fdlist* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fdlist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netbuf*, align 8
  %8 = alloca i32, align 4
  store %struct.fdlist* %0, %struct.fdlist** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.fdlist*, %struct.fdlist** %4, align 8
  %10 = getelementptr inbounds %struct.fdlist, %struct.fdlist* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FALSE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @TRUE, align 8
  store i64 %15, i64* %3, align 8
  br label %67

16:                                               ; preds = %2
  %17 = load %struct.fdlist*, %struct.fdlist** %4, align 8
  %18 = getelementptr inbounds %struct.fdlist, %struct.fdlist* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call %struct.netbuf* @uaddr2taddr(i32 %19, i8* %20)
  store %struct.netbuf* %21, %struct.netbuf** %7, align 8
  %22 = load %struct.netbuf*, %struct.netbuf** %7, align 8
  %23 = icmp ne %struct.netbuf* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = load i64, i64* @TRUE, align 8
  store i64 %25, i64* %3, align 8
  br label %67

26:                                               ; preds = %16
  %27 = load %struct.fdlist*, %struct.fdlist** %4, align 8
  %28 = getelementptr inbounds %struct.fdlist, %struct.fdlist* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @__rpc_nconf2fd(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.netbuf*, %struct.netbuf** %7, align 8
  %35 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %34, i32 0, i32 0
  %36 = load %struct.netbuf*, %struct.netbuf** %35, align 8
  %37 = call i32 @free(%struct.netbuf* %36)
  %38 = load %struct.netbuf*, %struct.netbuf** %7, align 8
  %39 = call i32 @free(%struct.netbuf* %38)
  %40 = load i64, i64* @TRUE, align 8
  store i64 %40, i64* %3, align 8
  br label %67

41:                                               ; preds = %26
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.netbuf*, %struct.netbuf** %7, align 8
  %44 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %43, i32 0, i32 0
  %45 = load %struct.netbuf*, %struct.netbuf** %44, align 8
  %46 = bitcast %struct.netbuf* %45 to %struct.sockaddr*
  %47 = load %struct.netbuf*, %struct.netbuf** %7, align 8
  %48 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @bind(i32 %42, %struct.sockaddr* %46, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @close(i32 %51)
  %53 = load %struct.netbuf*, %struct.netbuf** %7, align 8
  %54 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %53, i32 0, i32 0
  %55 = load %struct.netbuf*, %struct.netbuf** %54, align 8
  %56 = call i32 @free(%struct.netbuf* %55)
  %57 = load %struct.netbuf*, %struct.netbuf** %7, align 8
  %58 = call i32 @free(%struct.netbuf* %57)
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %41
  %62 = load i64, i64* @FALSE, align 8
  br label %65

63:                                               ; preds = %41
  %64 = load i64, i64* @TRUE, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i64 [ %62, %61 ], [ %64, %63 ]
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %65, %33, %24, %14
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local %struct.netbuf* @uaddr2taddr(i32, i8*) #1

declare dso_local i32 @__rpc_nconf2fd(i32) #1

declare dso_local i32 @free(%struct.netbuf*) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
