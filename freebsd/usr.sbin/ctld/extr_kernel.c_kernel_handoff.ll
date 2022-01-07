; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_kernel.c_kernel_handoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_kernel.c_kernel_handoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_6__*, i32, i32*, i32*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32* }
%struct.ctl_iscsi = type { i64, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CTL_ISCSI_HANDOFF = common dso_local global i32 0, align 4
@CONN_DIGEST_CRC32C = common dso_local global i64 0, align 8
@CTL_ISCSI_DIGEST_CRC32C = common dso_local global i8* null, align 8
@ctl_fd = common dso_local global i32 0, align 4
@CTL_ISCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"error issuing CTL_ISCSI ioctl; dropping connection\00", align 1
@CTL_ISCSI_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"error returned from CTL iSCSI handoff request: %s; dropping connection\00", align 1
@proxy_mode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_handoff(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.ctl_iscsi, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = call i32 @bzero(%struct.ctl_iscsi* %3, i32 112)
  %5 = load i32, i32* @CTL_ISCSI_HANDOFF, align 4
  %6 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 3
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 17
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.connection*, %struct.connection** %2, align 8
  %12 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 15
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @strlcpy(i32 %10, i32* %13, i32 4)
  %15 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.connection*, %struct.connection** %2, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 14
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @strlcpy(i32 %18, i32* %21, i32 4)
  %23 = load %struct.connection*, %struct.connection** %2, align 8
  %24 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 13
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 15
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.connection*, %struct.connection** %2, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 13
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @strlcpy(i32 %31, i32* %34, i32 4)
  br label %36

36:                                               ; preds = %27, %1
  %37 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 14
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.connection*, %struct.connection** %2, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @memcpy(i32 %40, i32 %43, i32 4)
  %45 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 13
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.connection*, %struct.connection** %2, align 8
  %50 = getelementptr inbounds %struct.connection, %struct.connection* %49, i32 0, i32 11
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @strlcpy(i32 %48, i32* %53, i32 4)
  %55 = load %struct.connection*, %struct.connection** %2, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 9
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %36
  %64 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 12
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.connection*, %struct.connection** %2, align 8
  %69 = getelementptr inbounds %struct.connection, %struct.connection* %68, i32 0, i32 9
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @strlcpy(i32 %67, i32* %74, i32 4)
  br label %76

76:                                               ; preds = %63, %36
  %77 = load %struct.connection*, %struct.connection** %2, align 8
  %78 = getelementptr inbounds %struct.connection, %struct.connection* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 10
  store i32 %79, i32* %82, align 4
  %83 = load %struct.connection*, %struct.connection** %2, align 8
  %84 = getelementptr inbounds %struct.connection, %struct.connection* %83, i32 0, i32 9
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 9
  store i32 %89, i32* %92, align 8
  %93 = load %struct.connection*, %struct.connection** %2, align 8
  %94 = getelementptr inbounds %struct.connection, %struct.connection* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CONN_DIGEST_CRC32C, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %76
  %99 = load i8*, i8** @CTL_ISCSI_DIGEST_CRC32C, align 8
  %100 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 8
  store i8* %99, i8** %102, align 8
  br label %103

103:                                              ; preds = %98, %76
  %104 = load %struct.connection*, %struct.connection** %2, align 8
  %105 = getelementptr inbounds %struct.connection, %struct.connection* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @CONN_DIGEST_CRC32C, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load i8*, i8** @CTL_ISCSI_DIGEST_CRC32C, align 8
  %111 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 7
  store i8* %110, i8** %113, align 8
  br label %114

114:                                              ; preds = %109, %103
  %115 = load %struct.connection*, %struct.connection** %2, align 8
  %116 = getelementptr inbounds %struct.connection, %struct.connection* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 6
  store i32 %117, i32* %120, align 8
  %121 = load %struct.connection*, %struct.connection** %2, align 8
  %122 = getelementptr inbounds %struct.connection, %struct.connection* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 5
  store i32 %123, i32* %126, align 4
  %127 = load %struct.connection*, %struct.connection** %2, align 8
  %128 = getelementptr inbounds %struct.connection, %struct.connection* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 4
  store i32 %129, i32* %132, align 8
  %133 = load %struct.connection*, %struct.connection** %2, align 8
  %134 = getelementptr inbounds %struct.connection, %struct.connection* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 3
  store i32 %135, i32* %138, align 4
  %139 = load %struct.connection*, %struct.connection** %2, align 8
  %140 = getelementptr inbounds %struct.connection, %struct.connection* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 2
  store i32 %141, i32* %144, align 8
  %145 = load %struct.connection*, %struct.connection** %2, align 8
  %146 = getelementptr inbounds %struct.connection, %struct.connection* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  store i32 %147, i32* %150, align 4
  %151 = load %struct.connection*, %struct.connection** %2, align 8
  %152 = getelementptr inbounds %struct.connection, %struct.connection* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 8
  %157 = load i32, i32* @ctl_fd, align 4
  %158 = load i32, i32* @CTL_ISCSI, align 4
  %159 = call i32 @ioctl(i32 %157, i32 %158, %struct.ctl_iscsi* %3)
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %161, label %163

161:                                              ; preds = %114
  %162 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %114
  %164 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @CTL_ISCSI_OK, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %3, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %168, %163
  ret void
}

declare dso_local i32 @bzero(%struct.ctl_iscsi*, i32) #1

declare dso_local i32 @strlcpy(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ctl_iscsi*) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @log_errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
