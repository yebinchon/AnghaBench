; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i32, i32, i32, i32, %struct.fd_data*, %struct.TYPE_5__* }
%struct.fd_data = type { i32, %struct.TYPE_6__*, %struct.fdc_data* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fdc_data = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.fd_data* }

@BIO_GETATTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GEOM::fwsectors\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"GEOM::fwheads\00", align 1
@ENOIOCTL = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i64 0, align 8
@BIO_WRITE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @fd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.fdc_data*, align 8
  %4 = alloca %struct.fd_data*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 6
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.fd_data*, %struct.fd_data** %10, align 8
  store %struct.fd_data* %11, %struct.fd_data** %4, align 8
  %12 = load %struct.fd_data*, %struct.fd_data** %4, align 8
  %13 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %12, i32 0, i32 2
  %14 = load %struct.fdc_data*, %struct.fdc_data** %13, align 8
  store %struct.fdc_data* %14, %struct.fdc_data** %3, align 8
  %15 = load %struct.fd_data*, %struct.fd_data** %4, align 8
  %16 = load %struct.bio*, %struct.bio** %2, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 5
  store %struct.fd_data* %15, %struct.fd_data** %17, align 8
  %18 = load %struct.bio*, %struct.bio** %2, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BIO_GETATTR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %1
  %24 = load %struct.bio*, %struct.bio** %2, align 8
  %25 = load %struct.fd_data*, %struct.fd_data** %4, align 8
  %26 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @g_handleattr_int(%struct.bio* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %81

33:                                               ; preds = %23
  %34 = load %struct.bio*, %struct.bio** %2, align 8
  %35 = load %struct.fd_data*, %struct.fd_data** %4, align 8
  %36 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @g_handleattr_int(%struct.bio* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %81

43:                                               ; preds = %33
  %44 = load %struct.bio*, %struct.bio** %2, align 8
  %45 = load i32, i32* @ENOIOCTL, align 4
  %46 = call i32 @g_io_deliver(%struct.bio* %44, i32 %45)
  br label %81

47:                                               ; preds = %1
  %48 = load %struct.bio*, %struct.bio** %2, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BIO_READ, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %63, label %53

53:                                               ; preds = %47
  %54 = load %struct.bio*, %struct.bio** %2, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BIO_WRITE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = load %struct.bio*, %struct.bio** %2, align 8
  %61 = load i32, i32* @EOPNOTSUPP, align 4
  %62 = call i32 @g_io_deliver(%struct.bio* %60, i32 %61)
  br label %81

63:                                               ; preds = %53, %47
  %64 = load %struct.bio*, %struct.bio** %2, align 8
  %65 = getelementptr inbounds %struct.bio, %struct.bio* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fd_data*, %struct.fd_data** %4, align 8
  %68 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sdiv i32 %66, %69
  %71 = load %struct.bio*, %struct.bio** %2, align 8
  %72 = getelementptr inbounds %struct.bio, %struct.bio* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.bio*, %struct.bio** %2, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.bio*, %struct.bio** %2, align 8
  %77 = getelementptr inbounds %struct.bio, %struct.bio* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.fd_data*, %struct.fd_data** %4, align 8
  %79 = load %struct.bio*, %struct.bio** %2, align 8
  %80 = call i32 @fd_enqueue(%struct.fd_data* %78, %struct.bio* %79)
  br label %81

81:                                               ; preds = %63, %59, %43, %42, %32
  ret void
}

declare dso_local i64 @g_handleattr_int(%struct.bio*, i8*, i32) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @fd_enqueue(%struct.fd_data*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
