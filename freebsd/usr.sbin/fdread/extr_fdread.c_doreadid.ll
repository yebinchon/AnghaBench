; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fdread/extr_fdread.c_doreadid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fdread/extr_fdread.c_doreadid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_readid = type { i32, i32, i32, i32, i32 }
%struct.fdc_status = type { i32, i32, i32, i32, i32 }
%struct.fd_type = type { i32, i32, i32, i32, i32 }

@FD_GTYPE = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ioctl(FD_GTYPE) failed -- not a floppy?\00", align 1
@FD_READID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"C = %d, H = %d, R = %d, N = %d\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"non-IO error\00", align 1
@FD_GSTAT = common dso_local global i32 0, align 4
@EX_IOERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"floppy IO error, but no FDC status\00", align 1
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @doreadid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doreadid(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fdc_readid, align 4
  %11 = alloca %struct.fdc_status, align 4
  %12 = alloca %struct.fd_type, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @FD_GTYPE, align 4
  %15 = bitcast %struct.fd_type* %12 to %struct.fdc_status*
  %16 = call i32 @ioctl(i32 %13, i32 %14, %struct.fdc_status* %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EX_OSERR, align 4
  %20 = call i32 @err(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %3
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %80, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %83

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %12, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = udiv i32 %27, %29
  %31 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %10, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %12, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %12, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = urem i32 %36, %38
  br label %41

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40, %35
  %42 = phi i32 [ %39, %35 ], [ 0, %40 ]
  %43 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %10, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @FD_READID, align 4
  %46 = bitcast %struct.fdc_readid* %10 to %struct.fdc_status*
  %47 = call i32 @ioctl(i32 %44, i32 %45, %struct.fdc_status* %46)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %10, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %10, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %10, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %10, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %53, i32 %55, i32 %57)
  br label %79

59:                                               ; preds = %41
  %60 = load i64, i64* @errno, align 8
  %61 = load i64, i64* @EIO, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EX_OSERR, align 4
  store i32 %65, i32* %4, align 4
  br label %85

66:                                               ; preds = %59
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @FD_GSTAT, align 4
  %69 = call i32 @ioctl(i32 %67, i32 %68, %struct.fdc_status* %11)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EX_IOERR, align 4
  %73 = call i32 @errx(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %66
  %75 = call i32 @printstatus(%struct.fdc_status* %11, i32 0)
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 @putc(i8 signext 10, i32 %76)
  %78 = load i32, i32* @EX_IOERR, align 4
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %74, %49
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %22

83:                                               ; preds = %22
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %63
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @ioctl(i32, i32, %struct.fdc_status*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @printstatus(%struct.fdc_status*, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
