; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_lookup.c_NDFREE.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_lookup.c_NDFREE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32*, %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@NDF_NO_FREE_PNBUF = common dso_local global i32 0, align 4
@HASBUF = common dso_local global i32 0, align 4
@namei_zone = common dso_local global i32 0, align 4
@NDF_NO_VP_UNLOCK = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@NDF_NO_DVP_UNLOCK = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@NDF_NO_VP_RELE = common dso_local global i32 0, align 4
@NDF_NO_DVP_RELE = common dso_local global i32 0, align 4
@WANTPARENT = common dso_local global i32 0, align 4
@NDF_NO_STARTDIR_RELE = common dso_local global i32 0, align 4
@SAVESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NDFREE(%struct.nameidata* %0, i32 %1) #0 {
  %3 = alloca %struct.nameidata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NDF_NO_FREE_PNBUF, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %2
  %12 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %13 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @HASBUF, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %11
  %20 = load i32, i32* @namei_zone, align 4
  %21 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %22 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @uma_zfree(i32 %20, i32 %24)
  %26 = load i32, i32* @HASBUF, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %29 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %27
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %19, %11, %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @NDF_NO_VP_UNLOCK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %33
  %39 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %40 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @LOCKLEAF, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %48 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %46, %38, %33
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @NDF_NO_DVP_UNLOCK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %52
  %58 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %59 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @LOCKPARENT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %67 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %70 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store i32 1, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %65, %57, %52
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @NDF_NO_VP_RELE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %100, label %79

79:                                               ; preds = %74
  %80 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %81 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %100

84:                                               ; preds = %79
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %89 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @vput(i32* %90)
  store i32 0, i32* %6, align 4
  br label %97

92:                                               ; preds = %84
  %93 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %94 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @vrele(i32* %95)
  br label %97

97:                                               ; preds = %92, %87
  %98 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %99 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %98, i32 0, i32 3
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %97, %79, %74
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %105 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @VOP_UNLOCK(i32* %106, i32 0)
  br label %108

108:                                              ; preds = %103, %100
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @NDF_NO_DVP_RELE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %139, label %113

113:                                              ; preds = %108
  %114 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %115 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @LOCKPARENT, align 4
  %119 = load i32, i32* @WANTPARENT, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %117, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %113
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %128 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @vput(i32* %129)
  store i32 0, i32* %5, align 4
  br label %136

131:                                              ; preds = %123
  %132 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %133 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @vrele(i32* %134)
  br label %136

136:                                              ; preds = %131, %126
  %137 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %138 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %137, i32 0, i32 2
  store i32* null, i32** %138, align 8
  br label %139

139:                                              ; preds = %136, %113, %108
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %144 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @VOP_UNLOCK(i32* %145, i32 0)
  br label %147

147:                                              ; preds = %142, %139
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @NDF_NO_STARTDIR_RELE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %167, label %152

152:                                              ; preds = %147
  %153 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %154 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @SAVESTART, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %152
  %161 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %162 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @vrele(i32* %163)
  %165 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %166 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %165, i32 0, i32 0
  store i32* null, i32** %166, align 8
  br label %167

167:                                              ; preds = %160, %152, %147
  ret void
}

declare dso_local i32 @uma_zfree(i32, i32) #1

declare dso_local i32 @vput(i32*) #1

declare dso_local i32 @vrele(i32*) #1

declare dso_local i32 @VOP_UNLOCK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
