; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_locallock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_locallock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfslockfile = type { i32 }
%struct.nfslockconflict = type { i32 }
%struct.nfslock = type { i64, i64, i32 }

@lo_lckowner = common dso_local global i32 0, align 4
@NFSLCK_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.nfslockfile*, i32, i64, i64, %struct.nfslockconflict*, i32*)* @nfsrv_locallock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_locallock(i32 %0, %struct.nfslockfile* %1, i32 %2, i64 %3, i64 %4, %struct.nfslockconflict* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfslockfile*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.nfslockconflict*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.nfslock*, align 8
  %16 = alloca %struct.nfslock*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.nfslockfile* %1, %struct.nfslockfile** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.nfslockconflict* %5, %struct.nfslockconflict** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.nfslockfile*, %struct.nfslockfile** %9, align 8
  %19 = getelementptr inbounds %struct.nfslockfile, %struct.nfslockfile* %18, i32 0, i32 0
  %20 = call %struct.nfslock* @LIST_FIRST(i32* %19)
  store %struct.nfslock* %20, %struct.nfslock** %15, align 8
  br label %21

21:                                               ; preds = %135, %7
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.nfslock*, %struct.nfslock** %15, align 8
  %27 = icmp ne %struct.nfslock* %26, null
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i1 [ false, %21 ], [ %27, %25 ]
  br i1 %29, label %30, label %136

30:                                               ; preds = %28
  %31 = load %struct.nfslock*, %struct.nfslock** %15, align 8
  %32 = load i32, i32* @lo_lckowner, align 4
  %33 = call %struct.nfslock* @LIST_NEXT(%struct.nfslock* %31, i32 %32)
  store %struct.nfslock* %33, %struct.nfslock** %16, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.nfslock*, %struct.nfslock** %15, align 8
  %36 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load %struct.nfslock*, %struct.nfslock** %16, align 8
  store %struct.nfslock* %40, %struct.nfslock** %15, align 8
  br label %135

41:                                               ; preds = %30
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.nfslock*, %struct.nfslock** %15, align 8
  %44 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %88

47:                                               ; preds = %41
  %48 = load i64, i64* %12, align 8
  %49 = load %struct.nfslock*, %struct.nfslock** %15, align 8
  %50 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sle i64 %48, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.nfslockfile*, %struct.nfslockfile** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @NFSLCK_UNLOCK, align 4
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.nfslockconflict*, %struct.nfslockconflict** %13, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @nfsrv_dolocal(i32 %54, %struct.nfslockfile* %55, i32 %56, i32 %57, i64 %58, i64 %59, %struct.nfslockconflict* %60, i32* %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %136

66:                                               ; preds = %53
  %67 = load i64, i64* %12, align 8
  store i64 %67, i64* %11, align 8
  br label %87

68:                                               ; preds = %47
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.nfslockfile*, %struct.nfslockfile** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @NFSLCK_UNLOCK, align 4
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.nfslock*, %struct.nfslock** %15, align 8
  %75 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.nfslockconflict*, %struct.nfslockconflict** %13, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @nfsrv_dolocal(i32 %69, %struct.nfslockfile* %70, i32 %71, i32 %72, i64 %73, i64 %76, %struct.nfslockconflict* %77, i32* %78)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  br label %136

83:                                               ; preds = %68
  %84 = load %struct.nfslock*, %struct.nfslock** %15, align 8
  %85 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %11, align 8
  br label %87

87:                                               ; preds = %83, %66
  br label %134

88:                                               ; preds = %41
  %89 = load i64, i64* %12, align 8
  %90 = load %struct.nfslock*, %struct.nfslock** %15, align 8
  %91 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sle i64 %89, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.nfslockfile*, %struct.nfslockfile** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.nfslock*, %struct.nfslock** %15, align 8
  %99 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load %struct.nfslockconflict*, %struct.nfslockconflict** %13, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = call i32 @nfsrv_dolocal(i32 %95, %struct.nfslockfile* %96, i32 %97, i32 %100, i64 %101, i64 %102, %struct.nfslockconflict* %103, i32* %104)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  br label %136

109:                                              ; preds = %94
  %110 = load i64, i64* %12, align 8
  store i64 %110, i64* %11, align 8
  br label %133

111:                                              ; preds = %88
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.nfslockfile*, %struct.nfslockfile** %9, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.nfslock*, %struct.nfslock** %15, align 8
  %116 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load %struct.nfslock*, %struct.nfslock** %15, align 8
  %120 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.nfslockconflict*, %struct.nfslockconflict** %13, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = call i32 @nfsrv_dolocal(i32 %112, %struct.nfslockfile* %113, i32 %114, i32 %117, i64 %118, i64 %121, %struct.nfslockconflict* %122, i32* %123)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %111
  br label %136

128:                                              ; preds = %111
  %129 = load %struct.nfslock*, %struct.nfslock** %15, align 8
  %130 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %11, align 8
  %132 = load %struct.nfslock*, %struct.nfslock** %16, align 8
  store %struct.nfslock* %132, %struct.nfslock** %15, align 8
  br label %133

133:                                              ; preds = %128, %109
  br label %134

134:                                              ; preds = %133, %87
  br label %135

135:                                              ; preds = %134, %39
  br label %21

136:                                              ; preds = %127, %108, %82, %65, %28
  %137 = load i64, i64* %11, align 8
  %138 = load i64, i64* %12, align 8
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %136
  %141 = load i32, i32* %17, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %140
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.nfslockfile*, %struct.nfslockfile** %9, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @NFSLCK_UNLOCK, align 4
  %148 = load i64, i64* %11, align 8
  %149 = load i64, i64* %12, align 8
  %150 = load %struct.nfslockconflict*, %struct.nfslockconflict** %13, align 8
  %151 = load i32*, i32** %14, align 8
  %152 = call i32 @nfsrv_dolocal(i32 %144, %struct.nfslockfile* %145, i32 %146, i32 %147, i64 %148, i64 %149, %struct.nfslockconflict* %150, i32* %151)
  store i32 %152, i32* %17, align 4
  br label %153

153:                                              ; preds = %143, %140, %136
  %154 = load i32, i32* %17, align 4
  %155 = call i32 @NFSEXITCODE(i32 %154)
  %156 = load i32, i32* %17, align 4
  ret i32 %156
}

declare dso_local %struct.nfslock* @LIST_FIRST(i32*) #1

declare dso_local %struct.nfslock* @LIST_NEXT(%struct.nfslock*, i32) #1

declare dso_local i32 @nfsrv_dolocal(i32, %struct.nfslockfile*, i32, i32, i64, i64, %struct.nfslockconflict*, i32*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
