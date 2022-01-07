; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_Delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_Delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iface = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ncp = type { i32 }
%struct.ncpaddr = type { i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"iface_Delete: socket(): %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iface_Delete(%struct.iface* %0, %struct.ncp* %1, %struct.ncpaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iface*, align 8
  %6 = alloca %struct.ncp*, align 8
  %7 = alloca %struct.ncpaddr*, align 8
  %8 = alloca %struct.ncpaddr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iface* %0, %struct.iface** %5, align 8
  store %struct.ncp* %1, %struct.ncp** %6, align 8
  store %struct.ncpaddr* %2, %struct.ncpaddr** %7, align 8
  %12 = load %struct.ncpaddr*, %struct.ncpaddr** %7, align 8
  %13 = call i32 @ncpaddr_family(%struct.ncpaddr* %12)
  %14 = load i32, i32* @SOCK_DGRAM, align 4
  %15 = call i32 @ID0socket(i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %11, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @LogERROR, align 4
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @strerror(i32 %19)
  %21 = call i32 @log_Printf(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %4, align 4
  br label %99

22:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %92, %22
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.iface*, %struct.iface** %5, align 8
  %26 = getelementptr inbounds %struct.iface, %struct.iface* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %95

29:                                               ; preds = %23
  %30 = load %struct.iface*, %struct.iface** %5, align 8
  %31 = getelementptr inbounds %struct.iface, %struct.iface* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = call i32 @ncprange_getaddr(i32* %36, %struct.ncpaddr* %8)
  %38 = load %struct.ncpaddr*, %struct.ncpaddr** %7, align 8
  %39 = call i64 @ncpaddr_equal(%struct.ncpaddr* %8, %struct.ncpaddr* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %91

41:                                               ; preds = %29
  %42 = load %struct.iface*, %struct.iface** %5, align 8
  %43 = getelementptr inbounds %struct.iface, %struct.iface* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.iface*, %struct.iface** %5, align 8
  %46 = getelementptr inbounds %struct.iface, %struct.iface* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @iface_addr_Zap(i32 %44, %struct.TYPE_5__* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %90

54:                                               ; preds = %41
  %55 = load %struct.ncp*, %struct.ncp** %6, align 8
  %56 = load %struct.iface*, %struct.iface** %5, align 8
  %57 = getelementptr inbounds %struct.iface, %struct.iface* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = call i32 @ncp_IfaceAddrDeleted(%struct.ncp* %55, %struct.TYPE_5__* %61)
  %63 = load %struct.iface*, %struct.iface** %5, align 8
  %64 = getelementptr inbounds %struct.iface, %struct.iface* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 1
  %70 = load %struct.iface*, %struct.iface** %5, align 8
  %71 = getelementptr inbounds %struct.iface, %struct.iface* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = load %struct.iface*, %struct.iface** %5, align 8
  %77 = getelementptr inbounds %struct.iface, %struct.iface* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sub i32 %78, %79
  %81 = sub i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i32 @bcopy(%struct.TYPE_5__* %69, %struct.TYPE_5__* %75, i32 %84)
  %86 = load %struct.iface*, %struct.iface** %5, align 8
  %87 = getelementptr inbounds %struct.iface, %struct.iface* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add i32 %88, -1
  store i32 %89, i32* %87, align 8
  store i32 1, i32* %10, align 4
  br label %90

90:                                               ; preds = %54, %41
  br label %95

91:                                               ; preds = %29
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %23

95:                                               ; preds = %90, %23
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @close(i32 %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %95, %17
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @ID0socket(i32, i32, i32) #1

declare dso_local i32 @ncpaddr_family(%struct.ncpaddr*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @ncprange_getaddr(i32*, %struct.ncpaddr*) #1

declare dso_local i64 @ncpaddr_equal(%struct.ncpaddr*, %struct.ncpaddr*) #1

declare dso_local i64 @iface_addr_Zap(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ncp_IfaceAddrDeleted(%struct.ncp*, %struct.TYPE_5__*) #1

declare dso_local i32 @bcopy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
