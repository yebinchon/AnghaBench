; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcbind.c_update_bound_sa.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcbind.c_update_bound_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32 }

@nhosts = common dso_local global i32 0, align 4
@bound_sa = common dso_local global i8** null, align 8
@PF_UNSPEC = common dso_local global i32 0, align 4
@hosts = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_bound_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_bound_sa() #0 {
  %1 = alloca %struct.addrinfo, align 4
  %2 = alloca %struct.addrinfo*, align 8
  %3 = alloca i32, align 4
  store %struct.addrinfo* null, %struct.addrinfo** %2, align 8
  %4 = load i32, i32* @nhosts, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %54

7:                                                ; preds = %0
  %8 = load i32, i32* @nhosts, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 8, %9
  %11 = trunc i64 %10 to i32
  %12 = call i8* @malloc(i32 %11)
  %13 = bitcast i8* %12 to i8**
  store i8** %13, i8*** @bound_sa, align 8
  %14 = call i32 @memset(%struct.addrinfo* %1, i32 0, i32 12)
  %15 = load i32, i32* @PF_UNSPEC, align 4
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %51, %7
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @nhosts, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = load i32*, i32** @hosts, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @getaddrinfo(i32 %26, i32* null, %struct.addrinfo* %1, %struct.addrinfo** %2)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %51

30:                                               ; preds = %21
  %31 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @malloc(i32 %33)
  %35 = load i8**, i8*** @bound_sa, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  store i8* %34, i8** %38, align 8
  %39 = load i8**, i8*** @bound_sa, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i8* %43, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %30, %29
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %17

54:                                               ; preds = %6, %17
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i64 @getaddrinfo(i32, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
