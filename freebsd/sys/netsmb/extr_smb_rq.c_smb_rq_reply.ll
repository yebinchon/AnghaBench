; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_rq_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_rq_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rq = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, %struct.mdchain }
%struct.TYPE_2__ = type { i32 }
%struct.mdchain = type { i32 }

@SMB_FLAGS2_ERR_STATUS = common dso_local global i32 0, align 4
@SMB_FLAGS2_SECURITY_SIGNATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"M:%04x, P:%04x, U:%04x, T:%04x, E: %d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_rq*)* @smb_rq_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_rq_reply(%struct.smb_rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb_rq*, align 8
  %4 = alloca %struct.mdchain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.smb_rq* %0, %struct.smb_rq** %3, align 8
  %9 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %10 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %9, i32 0, i32 10
  store %struct.mdchain* %10, %struct.mdchain** %4, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %12 = call i32 @smb_iod_waitrq(%struct.smb_rq* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %135

17:                                               ; preds = %1
  %18 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %19 = call i32 @md_get_uint32(%struct.mdchain* %18, i32* %5)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %135

24:                                               ; preds = %17
  %25 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %26 = call i32 @md_get_uint8(%struct.mdchain* %25, i32* %6)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %28 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %27, i32 0, i32 6
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SMB_FLAGS2_ERR_STATUS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %37 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %38 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %37, i32 0, i32 9
  %39 = call i32 @md_get_uint32le(%struct.mdchain* %36, i32* %38)
  store i32 %39, i32* %7, align 4
  br label %62

40:                                               ; preds = %24
  %41 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %42 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %43 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %42, i32 0, i32 1
  %44 = call i32 @md_get_uint8(%struct.mdchain* %41, i32* %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %46 = call i32 @md_get_uint8(%struct.mdchain* %45, i32* %6)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %48 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %49 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %48, i32 0, i32 0
  %50 = call i32 @md_get_uint16le(%struct.mdchain* %47, i32* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %40
  %54 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %55 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %58 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @smb_maperror(i32 %56, i32 %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %53, %40
  br label %62

62:                                               ; preds = %61, %35
  %63 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %64 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %65 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %64, i32 0, i32 8
  %66 = call i32 @md_get_uint8(%struct.mdchain* %63, i32* %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %68 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %69 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %68, i32 0, i32 7
  %70 = call i32 @md_get_uint16le(%struct.mdchain* %67, i32* %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %72 = call i32 @md_get_uint32(%struct.mdchain* %71, i32* %5)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %74 = call i32 @md_get_uint32(%struct.mdchain* %73, i32* %5)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %76 = call i32 @md_get_uint32(%struct.mdchain* %75, i32* %5)
  store i32 %76, i32* %7, align 4
  %77 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %78 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %79 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %78, i32 0, i32 2
  %80 = call i32 @md_get_uint16le(%struct.mdchain* %77, i32* %79)
  store i32 %80, i32* %7, align 4
  %81 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %82 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %83 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %82, i32 0, i32 4
  %84 = call i32 @md_get_uint16le(%struct.mdchain* %81, i32* %83)
  store i32 %84, i32* %7, align 4
  %85 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %86 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %87 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %86, i32 0, i32 3
  %88 = call i32 @md_get_uint16le(%struct.mdchain* %85, i32* %87)
  store i32 %88, i32* %7, align 4
  %89 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %90 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %91 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %90, i32 0, i32 5
  %92 = call i32 @md_get_uint16le(%struct.mdchain* %89, i32* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %62
  %96 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %97 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %96, i32 0, i32 6
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @SMB_FLAGS2_SECURITY_SIGNATURE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %106 = call i32 @smb_rq_verify(%struct.smb_rq* %105)
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %104, %95, %62
  %108 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %109 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %112 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %115 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %118 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %121 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %124 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @SMBSDEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %113, i32 %116, i32 %119, i32 %122, i32 %125)
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %107
  %130 = load i32, i32* %7, align 4
  br label %133

131:                                              ; preds = %107
  %132 = load i32, i32* %8, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %22, %15
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @smb_iod_waitrq(%struct.smb_rq*) #1

declare dso_local i32 @md_get_uint32(%struct.mdchain*, i32*) #1

declare dso_local i32 @md_get_uint8(%struct.mdchain*, i32*) #1

declare dso_local i32 @md_get_uint32le(%struct.mdchain*, i32*) #1

declare dso_local i32 @md_get_uint16le(%struct.mdchain*, i32*) #1

declare dso_local i32 @smb_maperror(i32, i32) #1

declare dso_local i32 @smb_rq_verify(%struct.smb_rq*) #1

declare dso_local i32 @SMBSDEBUG(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
