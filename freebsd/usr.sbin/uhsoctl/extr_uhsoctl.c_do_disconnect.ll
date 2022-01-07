; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_do_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_do_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"AT_OWANCALL=%d,0,0\0D\0A\00", align 1
@IPASSIGNED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*)* @do_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_disconnect(%struct.ctx* %0) #0 {
  %2 = alloca %struct.ctx*, align 8
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  store %struct.ctx* %0, %struct.ctx** %2, align 8
  %5 = load %struct.ctx*, %struct.ctx** %2, align 8
  %6 = load %struct.ctx*, %struct.ctx** %2, align 8
  %7 = getelementptr inbounds %struct.ctx, %struct.ctx* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @at_cmd(%struct.ctx* %5, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.ctx*, %struct.ctx** %2, align 8
  %11 = getelementptr inbounds %struct.ctx, %struct.ctx* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @close(i32 %12)
  %14 = load %struct.ctx*, %struct.ctx** %2, align 8
  %15 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IPASSIGNED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i32 12, i32* %21, align 4
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i32 12, i32* %22, align 4
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @memset(i32* %24, i32 255, i32 4)
  %26 = load i32, i32* @AF_INET, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.ctx*, %struct.ctx** %2, align 8
  %32 = getelementptr inbounds %struct.ctx, %struct.ctx* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @memcpy(i32* %30, i32* %33, i32 4)
  %35 = load %struct.ctx*, %struct.ctx** %2, align 8
  %36 = getelementptr inbounds %struct.ctx, %struct.ctx* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %39 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %40 = call i32 @ifaddr_del(i32 %37, %struct.sockaddr* %38, %struct.sockaddr* %39)
  %41 = load %struct.ctx*, %struct.ctx** %2, align 8
  %42 = getelementptr inbounds %struct.ctx, %struct.ctx* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @if_ifdown(i32 %43)
  %45 = load i32, i32* @IPASSIGNED, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.ctx*, %struct.ctx** %2, align 8
  %48 = getelementptr inbounds %struct.ctx, %struct.ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %20, %1
  %52 = load %struct.ctx*, %struct.ctx** %2, align 8
  %53 = load %struct.ctx*, %struct.ctx** %2, align 8
  %54 = getelementptr inbounds %struct.ctx, %struct.ctx* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @set_nameservers(%struct.ctx* %52, i32 %55, i32 0)
  ret void
}

declare dso_local i32 @at_cmd(%struct.ctx*, i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ifaddr_del(i32, %struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local i32 @if_ifdown(i32) #1

declare dso_local i32 @set_nameservers(%struct.ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
