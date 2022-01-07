; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_vc_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_vc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_connobj = type { i32 }
%struct.smb_vc = type { i32, i64, i64, i64, i64, i32*, i32*, i64, i64, %struct.smb_vc*, %struct.smb_vc*, %struct.smb_vc*, i32, i32, i32, i32, i64 }

@M_SMBTEMP = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@M_SMBCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smb_connobj*)* @smb_vc_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb_vc_free(%struct.smb_connobj* %0) #0 {
  %2 = alloca %struct.smb_connobj*, align 8
  %3 = alloca %struct.smb_vc*, align 8
  store %struct.smb_connobj* %0, %struct.smb_connobj** %2, align 8
  %4 = load %struct.smb_connobj*, %struct.smb_connobj** %2, align 8
  %5 = call %struct.smb_vc* @CPTOVC(%struct.smb_connobj* %4)
  store %struct.smb_vc* %5, %struct.smb_vc** %3, align 8
  %6 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %7 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %6, i32 0, i32 16
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %12 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %11, i32 0, i32 16
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @smb_iod_destroy(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %17 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %16, i32 0, i32 15
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @SMB_STRFREE(i32 %18)
  %20 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %21 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %20, i32 0, i32 14
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @SMB_STRFREE(i32 %22)
  %24 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %25 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %24, i32 0, i32 13
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SMB_STRFREE(i32 %26)
  %28 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %29 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %28, i32 0, i32 12
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @SMB_STRFREE(i32 %30)
  %32 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %33 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %32, i32 0, i32 11
  %34 = load %struct.smb_vc*, %struct.smb_vc** %33, align 8
  %35 = icmp ne %struct.smb_vc* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %15
  %37 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %38 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %37, i32 0, i32 11
  %39 = load %struct.smb_vc*, %struct.smb_vc** %38, align 8
  %40 = load i32, i32* @M_SMBTEMP, align 4
  %41 = call i32 @free(%struct.smb_vc* %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %15
  %43 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %44 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %43, i32 0, i32 10
  %45 = load %struct.smb_vc*, %struct.smb_vc** %44, align 8
  %46 = icmp ne %struct.smb_vc* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %49 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %48, i32 0, i32 10
  %50 = load %struct.smb_vc*, %struct.smb_vc** %49, align 8
  %51 = load i32, i32* @M_SONAME, align 4
  %52 = call i32 @free(%struct.smb_vc* %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %55 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %54, i32 0, i32 9
  %56 = load %struct.smb_vc*, %struct.smb_vc** %55, align 8
  %57 = icmp ne %struct.smb_vc* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %60 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %59, i32 0, i32 9
  %61 = load %struct.smb_vc*, %struct.smb_vc** %60, align 8
  %62 = load i32, i32* @M_SONAME, align 4
  %63 = call i32 @free(%struct.smb_vc* %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %66 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %65, i32 0, i32 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %71 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %70, i32 0, i32 8
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @iconv_close(i64 %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %76 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %81 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @iconv_close(i64 %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %86 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %85, i32 0, i32 6
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %91 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %90, i32 0, i32 6
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %94 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %99 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %98, i32 0, i32 5
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %97, %92
  %101 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %102 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %107 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @iconv_close(i64 %108)
  br label %110

110:                                              ; preds = %105, %100
  %111 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %112 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %117 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @iconv_close(i64 %118)
  br label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %122 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %127 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @iconv_close(i64 %128)
  br label %130

130:                                              ; preds = %125, %120
  %131 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %132 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %137 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @iconv_close(i64 %138)
  br label %140

140:                                              ; preds = %135, %130
  %141 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %142 = call i32 @VCTOCP(%struct.smb_vc* %141)
  %143 = call i32 @smb_co_done(i32 %142)
  %144 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %145 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %144, i32 0, i32 0
  %146 = call i32 @smb_sl_destroy(i32* %145)
  %147 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %148 = load i32, i32* @M_SMBCONN, align 4
  %149 = call i32 @free(%struct.smb_vc* %147, i32 %148)
  ret void
}

declare dso_local %struct.smb_vc* @CPTOVC(%struct.smb_connobj*) #1

declare dso_local i32 @smb_iod_destroy(i64) #1

declare dso_local i32 @SMB_STRFREE(i32) #1

declare dso_local i32 @free(%struct.smb_vc*, i32) #1

declare dso_local i32 @iconv_close(i64) #1

declare dso_local i32 @smb_co_done(i32) #1

declare dso_local i32 @VCTOCP(%struct.smb_vc*) #1

declare dso_local i32 @smb_sl_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
